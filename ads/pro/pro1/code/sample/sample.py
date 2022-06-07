import random
import subprocess
import sys
i=int(sys.argv[1])

data=[]
o=str(i)+" "
for j in range(i):
    temp=random.randint(0,2**30)
    while temp in data:
        temp=random.randint(0,2**30)
    data.append(temp)
data.sort()
for j in data:
    o+=str(j)+" "
for j in data:
    o+=str(j)+" "
print(o)
o=str(i)+" "
for j in data:
    o+=str(j)+" "
data_r = data[:]
data_r.reverse()
for j in data_r:
    o+=str(j)+" "
print(o)
data_r=data[:]
random.shuffle(data_r)
o=str(i)+" "
for j in data_r:
    o+=str(j)+" "
random.shuffle(data_r)
for j in data_r:
    o+=str(j)+" "
print(o)
# AVL_ins_time=[]
# AVL_del_time=[]
# for i in range(1000,10000):
#     sh_AVL=process('./Splayref')
#     data=[]
#     sh_AVL.sendline(str(i))
#     for j in range(i):
#         temp=random.randint(0,2**30)
#         data.append(temp)
#         sh_AVL.sendline(str(temp))
        
#     a=sh_AVL.recvline().decode('utf-8')
#     AVL_ins_time.append(float(a[38:-1]))
#     for j in data:
#         sh_AVL.sendline(str(j))
#     a=sh_AVL.recvline().decode('utf-8')
#     AVL_del_time.append(float(a[19:-1]))
#     sh_AVL.close()
# print(AVL_ins_time)
# p=subprocess.Popen('./test',shell=True,stdin=subprocess.PIPE,stdout=subprocess.PIPE,universal_newlines=True)
# #p.stdin.write('10')
# print(p.stdout.readline())