import pymysql as mysql
from datetime import date
import pandas as pd
import cryptography

# create a table for books, library cards and records
def create_table(cursor):
    try: 
        create_book = '''create table book(     \
                        ISBN    varchar(20),    \
                        class   varchar(10),    \
                        name    varchar(30),    \
                        press   varchar(30),    \
                        year    int,            \
                        author  varchar(20),    \
                        price   decimal(7, 2),  \
                        total   int,            \
                        stock   int,            \
                        primary key(ISBN)
                        )'''
        create_card = '''create table card(     \
                        ID      varchar(10),    \
                        name    varchar(30),    \
                        dpmt    varchar(10),    \
                        type    char(1),        \
                        primary key(ID),        \
                        check (type in ('T', 'S'))
                        )'''
        create_record = '''create table record( \
                        ID      varchar(10),    \
                        ISBN    varchar(20),    \
                        br_date int,            \
                        rt_date int,            \
                        type    char(1),        \
                        primary key(ID, ISBN),  \
                        foreign key(ID) references card(ID), \
                        foreign key(ISBN) references book(ISBN)
                        )'''
        cursor.execute(create_book)
        cursor.execute(create_card)
        cursor.execute(create_record)
        print('Creating tables is done!')
    except: 
        print('Tables already exist!')

# find a book and return its information
def search_book(cursor): 
    print("You are trying to search a book...")
    print('Please choose the information you want to search: ')
    print("1: Book Name\t\t2: Classification")
    print("3: Press\t\t4: Publication year")
    print("5: Author\t\t6: Price")
    print("7: ISBN\t\t\t0: Exit")
    try: 
        op = int(input())
    except: 
        op = 8
    if op == 0: 
        return 
    elif op == 1: 
        name = input("Please enter the name:")
        cursor.execute("""select * from book where name=%s""", (name, ))
    elif op == 2: 
        classi = input("Please enter the classification:")
        cursor.execute("""select * from book where class=%s""", (classi, ))
    elif op == 3: 
        press = input("Please enter the press:")
        cursor.execute("""select * from book where press=%s""", (press, ))
    elif op == 4: 
        try: 
            yearl = int(input("Please enter the lower bound of the publication year:"))  
            yearu = int(input("Please enter the upper bound of the publication year:")) 
        except: 
            print('The publication year should be a number!')
            return 
        cursor.execute("""select * from book where year>=%s and year<=%s""", (yearl, yearu))
    elif op == 5: 
        author = input("Please enter the author:")
        cursor.execute("""select * from book where author=%s""", (author, ))
    elif op == 6:
        try: 
            pricel = float(input("Please enter the lower bound of the price:"))  
            priceu = float(input("Please enter the upper bound of the price:")) 
        except: 
            print('The price should be a number!')
            return 
        cursor.execute("""select * from book where price>=%s and price<=%s""", (pricel, priceu))
    elif op == 7: 
        ISBN = input("Please enter the ISBN:")
        cursor.execute("""select * from book where ISBN=%s""", (ISBN, ))
    else: 
        print('Illegal index!')
        return 
    
    res = cursor.fetchall()
    if len(res) > 0 :
        df = pd.DataFrame(res, columns=['ISBN', 'Classification', 'Name', \
                                        'Press', 'Year', 'Author', 'Price', 'Total', 'Stock'])
        print(df)
    else :
        print('No such books!')
    return 

# insert
def insert(db, cursor, ISBN, cate, name, press, year, author, price): 
    ISBN = str(ISBN)
    sql_insert = """insert into book values(%s, %s, %s, %s, %s, %s, %s, %s, %s)"""
    insert_data = (ISBN, cate, name, press, year, author, price, 1, 1)
    try: 
        # add a brand new book
        cursor.execute(sql_insert, insert_data)
        db.commit()
        print("%s is successfully added to the storage!"%name)
    except mysql.err.IntegrityError: 
        # duplicate ISBN
        db.rollback()
        # retrive the data
        sql_select = """select total, stock from book where ISBN=%s"""
        cursor.execute(sql_select, (ISBN, ))
        total, stock = cursor.fetchone()
        # update the price, total and the stock
        sql_update = """update book set price=%s, total=%s, stock=%s where ISBN=%s"""
        cursor.execute(sql_update, (price, total+1, stock+1, ISBN))
        db.commit()
        print("Existed %s and the information is updated!"%name)
    except: 
        db.rollback()
        print("Error when adding %s! Please check your input!"%name)
    return 

# borrow a book
def borrow_book(db, cursor): 
    print("You are trying to borrow a book...")
    ID = input('Please enter your card ID: ')
    # check for existence
    try: 
        cursor.execute("""select type from card where ID=%s""", (ID, ))
        typee = cursor.fetchone()[0]
    except : 
        print('Nonexistent card ID! ')
        return 
    ISBN = input('Please enter the ISBN of the book you are to borrow: ')
    # check ISBN
    try: 
        cursor.execute("""select stock, name from book where ISBN=%s""", (ISBN, ))
        stock, name = cursor.fetchone()
    except :
        print('Nonexistent ISBN!')
        return
    # begin borrowing
    # the priority here does not matter that much
    if stock == 0: 
        # No one is available
        print('No available books now!')
        # sure to exist
        cursor.execute("""select min(br_date) from record where ISBN=%s""", (ISBN, ))
        datee = cursor.fetchone()[0]
        print('The first one to be borrowed is borrowes on: ', datee//10000 , '-', (datee//100)%100, '-', datee%100)
        print('A book can be kept for 3 months at most...')
        return 
    else : 
        # borrow a book
        try: 
            datestamp = date.today().year*10000 + date.today().month*100 + date.today().day
            cursor.execute("""insert into record values(%s, %s, %s, NULL, %s)""", (ID, ISBN, datestamp, typee))
            cursor.execute("""update book set stock=%s where ISBN=%s""", (stock-1, ISBN))
            db.commit()
            print('You have successfully borrowed %s!'%name)
        except mysql.err.IntegrityError:   
            # duplicate, one is borrowed    
            db.rollback()   
            print('You have already borrowed one!')  
    return 

# return a book
def return_book(cursor): 
    print("You are trying to return a book...")
    ID = input('Please enter your card ID: ')
    # check for existence
    try: 
        cursor.execute("""select type from card where ID=%s""", (ID, ))
        # raise an error if no results
        cursor.fetchone()[:]
    except : 
        print('Nonexistent card ID! ')
        return 
    ISBN = input('Please enter the ISBN of the book you are to return: ')
    # check ISBN
    try: 
        cursor.execute("""select stock, name from book where ISBN=%s""", (ISBN, ))
        stock, name = cursor.fetchone()
    except :
        print('Nonexistent ISBN!')
        return
    # check record
    try: 
        cursor.execute("""select * from record where ISBN=%s and ID=%s and rt_date is NULL""", (ISBN, ID))
        # raise an error if no results
        cursor.fetchone()[:]
    except :
        print("You haven't borrowed %s!"%name)
        return
    # return
    try: 
        datestamp = date.today().year*10000 + date.today().month*100 + date.today().day
        cursor.execute("""update record set rt_date=%s where ID=%s and ISBN=%s""", (datestamp, ID, ISBN))
        cursor.execute("""update book set stock=%s where ISBN=%s""", (stock+1, ISBN))
        db.commit()
        print('You just returned %s!'%name)
    except: 
        print('Error when returning a book!')
    return 

# add a book to the storage
def add_book(db, cursor): 
    print("You are trying to add a book to the storage...")
    # get the information
    ISBN = input("Please enter the ISBN:")
    name = input("Please enter the name:")
    author = input("Please enter the author:")
    press = input("Please enter the press:")
    cate = input("Please enter the classification:")
    try: 
        year = int(input("Please enter the publication year:"))  
    except: 
        print('The publication year should be a number!')
        return 
    try: 
        price = float(input("Please enter the price:")) 
    except: 
        print('The price should be a number!')
        return 
    # insert
    insert(db, cursor, ISBN, cate, name, press, year, author, price)
    return

# view borrowed books
def view_br(cursor): 
    print('You are trying to view the books you have borrowed...')
    ID = input('Please enter your card ID: ')
    try: 
        cursor.execute("""select type from card where ID=%s""", (ID, ))
        # raise an error if no results
        cursor.fetchone()[:]
    except : 
        print('Nonexistent card ID! ')
        return 
    # select those haven't been returned
    cursor.execute("""select * from record natural join book where ID=%s and rt_date is NULL""", (ID, ))
    res = cursor.fetchall()
    if len(res) == 0: 
        # no borrowed books
        print("You haven't borrowed any book!")
    else: 
        print('\t ISBN \t', '\t Name\t', '\t Date')
        for row in res: 
            datee = row[2]
            print(row[0], '\t', row[6], '\t', datee//10000 , '-', (datee//100)%100, '-', datee%100)
    return

# manage the library card
def manage(db, cursor): 
    print('You are trying to manage the library card...')
    psw = input('Please enter the password:')
    if psw == 'manage': 
        print('Please choose your operation: ')
        print("1: Add one card\t\t2: Delete one card")
        print("0: Exit")
        # get the operation
        try: 
            op = int(input())
        except: 
            # for illegal input
            op = 3
        
        if op == 1: 
            # add one card
            ID = input("Please enter the ID:")
            name = input("Please enter the name:")
            dpmt = input("Please enter the department:")
            typee = input("Please enter the type('T' or 'S'):")
            try: 
                sql_insert = """insert into card values(%s, %s, %s, %s)"""
                insert_data = (ID, name, dpmt, typee)
                cursor.execute(sql_insert, insert_data)
                db.commit()
                print('%s is successfully added!'%ID)
            except mysql.err.IntegrityError:
                # duplicate 
                db.rollback()
                print('%s already exists!'%ID)
            except mysql.err.OperationalError: 
                db.rollback()
                print('Error! Please check your input!')
        elif op == 2: 
            # delete one card
            ID = input("Please enter the ID:")
            # no error will be raised
            try: 
                cursor.execute("""select * from card where ID=%s""", (ID, ))
                res = cursor.fetchone()[0]
            except: 
                print('Nonexistent card!')
                return 
            cursor.execute("""select * from record where ID=%s and rt_date is NULL""", (ID, ))
            res = cursor.fetchone()
            if res is None:     # deletable
                cursor.execute("""delete from record where ID=%s""", (ID, ))
                res = cursor.execute("""delete from card where ID=%s""", (ID, ))
                if res == 1: 
                    db.commit()
                    print('%s is successfully deleted!'%ID)
                else :
                    db.rollback()
                    print('Error!')
            else :
                print('Some book is kept by this card yet! Deletion fails!')
            
        elif op == 0:
            return
        else :
            print("Nonexistent operation!")
        return 
    else :
        print('Wrong password!')
        return

# read in the books by reading a file
def read_file(db, cursor): 
    print("You are trying to read a file... ")
    # path = input('Please enter the path: ')
    path = 'py/python/books.csv'
    df = pd.DataFrame(pd.read_csv(path))
    for row in df.itertuples(): 
        insert(db, cursor, row[1], row[2], row[3], row[4], row[5], row[6], row[7])
    return

#-------------------------------- begin --------------------------------#
# connect to the database and create a cursor
db = mysql.connect(host="127.0.0.1", user="root", passwd="12zpq186737", db="labfive", charset="UTF8")
cursor = db.cursor()
create_table(cursor)

while 1: 
    print('')
    print("Please choose your operation: ")
    print("1: Book Search\t\t2: Borrow")
    print("3: Return\t\t4: View Borrowed Books")
    print("5: Storage\t\t6: Read a File")
    print("7: Card Management\t0: Exit")
    try: 
        op = int(input()) 
    except: 
        # for illegal input
        op = 8
    if op == 0: 
        print("Bye")
        # close the connection
        db.close()
        break
    elif op == 1: 
        search_book(cursor)
    elif op == 2: 
        borrow_book(db, cursor)
    elif op == 3: 
        return_book(cursor)
    elif op == 4: 
        view_br(cursor)
    elif op == 5: 
        # 9787513311236     Roger Ackroyd
        # Agatha            SPH
        # Detective         2013
        # 28.00
        add_book(db, cursor)
    elif op == 6: 
        read_file(db, cursor)
    elif op == 7: 
        manage(db, cursor)
    else : 
        print("Nonexistent operation!")
