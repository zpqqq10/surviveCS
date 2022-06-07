#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define SIZE 1005

// use linked lists to represent unsafe fruits
struct fruit
{
    int opposite; // the fruit cannot be eaten together
    struct fruit *next; 
}fruits[SIZE];
typedef struct fruit fruit; 

int maxnum, minprice, basket[SIZE];  // for the final solution, basket[] stores the exact solution
int total[SIZE], amount, tips, bptr, curprice;      // for the process
int price[SIZE];    // the price of each fruit

// insert an unsafe fruit into the list
void inserttips(fruit *f, int opp)
{
    fruit *tmp = (fruit *)malloc(sizeof(struct fruit)); 
    tmp->opposite = opp; 
    tmp->next = f->next; 
    f->next = tmp; 
    return ; 
}

// check if a fruit is unsafe to the basket
int findx(int x)
{
    if(price[x] == 0)
        return -1;      // no such fruit
    for(int i=0; i<bptr; i++)
    {
        fruit *ptr = fruits[total[i]].next; 
        while (ptr)
        {
            if(ptr->opposite == x)
                return 1;           // a conflict is found
            else 
                ptr = ptr->next; 
        }
    }
    return 0;           // the fruit can be added to the basket
}

// for a rough pruning
// count the total cost of those not in the basket
int countprice(int x)
{
    int ct = 0; 
    for(int i=x; i<=amount; i++)
    {
        ct += price[i]; 
    }
    return ct + curprice; 
}

// judge whether a fruit can be added to the basket
// update the information if necessary
int judge(int x)
{
    if(!findx(x))    
    {
        int available = amount - x + 1, a_price = countprice(x); 
        if((available+bptr < maxnum) || (available+bptr == maxnum && a_price >= minprice))   // an easy pruning
        {
            return -1; 
        }
        else    // goes on and update if necessary
        {
            // more fruits or lower cost
            if((bptr+1 > maxnum) || (bptr+1 == maxnum && curprice + price[x] < minprice))
            {
                maxnum = bptr + 1; 
                for(int i=0; i<bptr; i++)
                {
                    basket[i] = total[i]; 
                }
                basket[bptr] = x; 
                minprice = curprice + price[x]; 
            }
            return 1; 
        }
    } 
    else            // conflict
    {
        return 0; 
    }
}

// just like a dfs function
void findsolution(int level)
{
    if(level == amount +1)  // the search has ended
        return ; 
    int i = level; 
    int exam = judge(i); 
    if(exam == 1)   // the recursion goes on
    {
        total[bptr++] = i; 
        curprice += price[i]; 
        findsolution(level +1);     // find solutions when current fruit is in the basket
        curprice -= price[i]; 
        total[--bptr] = 0; 
        findsolution(level +1);     // find solutions when current fruit is not in the basket
    }
    else if(exam == -1) // prune
    {
        return ; 
    }
    else            // conflict
    {
        findsolution(level +1);  
    }
}

int main()
{
    // initialization
    for(int i=0; i<SIZE; i++)
    {
        fruits[i] = {-1, NULL}; 
        price [i] = 0; 
    }
    scanf("%d %d", &tips, &amount); 
    for(int i=0; i<tips; i++)
    {
        int a, b; 
        scanf("%d %d", &a, &b); 
        inserttips(&fruits[a], b); 
        inserttips(&fruits[b], a); 
    }
    for(int i=0; i<amount; i++)
    {
        int index, p; 
        scanf("%d %d", &index, &p); 
        price[index] = p; 
    }
    maxnum = bptr = curprice = 0; 
    minprice = 0x7FFFFFFF; 

    // time with easy pruning: 0.000300 ?
    // clock_t start = clock(); 
    findsolution(0); 
    // clock_t end = clock(); 
    // printf("time with easy pruning: %f\n", (double)(end-start)/CLK_TCK); 
    printf("%d\n", maxnum); 
    for(int i=0; i<maxnum; i++)
    {
        if(i == 0)
            printf("%03d", basket[i]); 
        else 
            printf(" %03d", basket[i]); 
    }
    printf("\n%d\n", minprice); 
    system("pause"); 
    return 0; 
}