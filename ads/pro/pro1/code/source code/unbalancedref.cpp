#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// definition of the node
typedef struct Node *node;
struct Node
{
    int key;
    node left;
    node right;
};

node Find(int X, node T);
node FindMin(node T);
node Insert(int X, node T);
node Delete(int X, node T);

int main(int argc,char* argv[])
{
    int N, key[10000];
    node T = NULL;
    clock_t start,finish;
    scanf("%d",&N);
    for (int i = 0; i < N; i++)
    {
        scanf("%d",&key[i]);        
    }
    start = clock();    // the start of insertion
    for(int i=0;i<N;i++)
    {
        T = Insert(key[i], T);
    }
    finish=clock();     // the end of insertion
    printf("Insert %d keys into the tree costs: %lf\n",N,(double)(finish - start) / CLOCKS_PER_SEC);
    for (int i = 0; i < N; i++)
    {
        scanf("%d",&key[i]);        
    }
    start = clock();    // the start of deletion
    for (int i = 0; i < N; i++)
    {
        T = Delete(key[i],T);
    }
    finish=clock();     // the end of deletion
    printf("Delete keys costs: %lf\n",(double)(finish - start) / CLOCKS_PER_SEC);
    return 0;
}

// simply find the node containing the key X
node Find(int X, node T)
{
    if (!T)
        return NULL;
    if (X < T->key)
        return Find(X, T->left);
    else if (X > T->key)
        return Find(X, T->right);
    else
        return T;
}

// simply find the node containing the smallest key
node FindMin(node T)
{
    if (!T)
        return NULL;
    else if (!T->left)
        return T;
    else
        return FindMin(T->left);
}

// insert a new key into the tree
node Insert(int X, node T)
{
    if (!T)     // the position is found
    {
        T = (node)malloc(sizeof(struct Node));
        T->key = X;
        T->left = T->right = NULL;
    }
    else if (X < T->key)
        T->left = Insert(X, T->left);
    else if (X > T->key)    // use else if to prevent duplication
        T->right = Insert(X, T->right);
    return T;
}

// simply deletion
node Delete(int X, node T)
{
    node Tmp;
    if (X < T->key)
        T->left = Delete(X, T->left);
    else if (X > T->key)
        T->right = Delete(X, T->right);
    else if (T->left && T->right) // the node is found and it has two children
    {
        Tmp = FindMin(T->right);  // find a node to substitue the node to be deleted
        T->key = Tmp->key;
        T->right = Delete(T->key, T->right);
    }
    else    // the node has less than 2 children
    {
        Tmp = T;
        if (!T->left)
            T = T->right;
        else if (!T->right)
            T = T->left;
        free(Tmp);
    }
    return T;
}