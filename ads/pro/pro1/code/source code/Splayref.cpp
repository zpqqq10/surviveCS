#include<stdio.h>
#include<stdlib.h>
#include<time.h>

// definition of nodes, in which the pointer parent is added 
typedef struct Node *node; 
struct Node{
    int key;
    node parent; 
    node left; 
    node right; 
};

node root; 
node Insert(int key, node P, node T); 
node Find(int key);    // with adjustment
node Search(int key, node T); // mere search and no adjustment
node FindMax(node T); 
node Splay(node Tmp);
node Delete(int key); 
// almost the same as the four rotations of AVL, but also these four also need to deal with pointer parent
node SingleRotationleft(node T); 
node DoubleRotationleft(node T); 
node SingleRotationright(node T); 
node DoubleRotationright(node T); 
void print_tree(node root);
int main(int argc,char* argv[])
{
    int N, key[10000]; 
    clock_t start,finish;
    root=NULL; 
    scanf("%d", &N);  
    for(int i=0;i<N;i++)
    {
        scanf("%d",&key[i]);
    }
    start=clock();  // the start of insertion
    for(int i=0;i<N;i++)
    {
        root=Insert(key[i], NULL, root); 
        Find(key[i]); // modify the tree after each insertion
    }
    finish=clock(); // the ned of insertion
    printf("Insert %d keys into the tree costs: %lf\n",N,(double)(finish - start) / CLOCKS_PER_SEC);
    for(int i=0;i<N;i++)
    {
        scanf("%d",&key[i]);
    }
    start = clock(); // the start of deletion
    for (int i = 0; i < N; i++)
    {
        root = Delete(key[i]);
    }
    finish=clock(); // the end of deletion
    printf("Delete keys costs: %lf\n",(double)(finish - start) / CLOCKS_PER_SEC);

    return 0; 
}
// for test and confirmation
void print_tree(node root)
{
    if(root->left!=NULL) print_tree(root->left);
    printf("%d ",root->key);
    if(root->right!=NULL) print_tree(root->right);
}

// find the node containing the key and adjust the tree correspondingly
node Find(int key)
{
    node Tmp=Search(key, root); 
    if(Tmp && Tmp!=root) // if the node exists, move it to the root
    {
        root = Splay(Tmp); 
    }
    return root; 
}

// simply search for the node
node Search(int key, node T)
{
    if (!T)
        return NULL;
    if (key < T->key)
        return Search(key, T->left);
    else if (key > T->key)
        return Search(key, T->right);
    else
        return T;
}

// find the node with the largest key in the tree
node FindMax(node T)
{
    if (!T)
        return NULL;
    else if (!T->right)
        return T;
    else
        return FindMax(T->right);
}

// adjust the tree, move the node Tmp to the root
node Splay(node Tmp)
{
    // move up the node when its parent is not the root
    // if its grandparent is the root, change the pointer root for rotation
    while(Tmp!=root && Tmp->parent!=root)
    {
        if(Tmp==Tmp->parent->left && Tmp->parent==Tmp->parent->parent->left) // L-L
        {
            if(root == Tmp->parent->parent)
                root=Tmp; 
            SingleRotationleft(Tmp->parent->parent); 
            SingleRotationleft(Tmp->parent); 
        }
        else if(Tmp==Tmp->parent->right && Tmp->parent==Tmp->parent->parent->left) // L-R
        {
            if(root == Tmp->parent->parent)
                root=Tmp; 
            DoubleRotationleft(Tmp->parent->parent); 
        }
        else if(Tmp==Tmp->parent->left && Tmp->parent==Tmp->parent->parent->right) // R-L
        {
            if(root == Tmp->parent->parent)
                root=Tmp; 
            DoubleRotationright(Tmp->parent->parent);
        }
        else if(Tmp==Tmp->parent->right && Tmp->parent==Tmp->parent->parent->right) // R-R
        {
            if(root == Tmp->parent->parent)
                root=Tmp; 
            SingleRotationright(Tmp->parent->parent); 
            SingleRotationright(Tmp->parent); 
        }
    }
    // the parent is the root
    if(Tmp==root->left)
        return SingleRotationleft(root); 
    else if(Tmp==root->right)
        return SingleRotationright(root); 
    else
        return Tmp; 
}

// just like the deletion of a binary search tree
node Delete(int key)
{
    Find(key); //actually root->key == key
    if(root->left) // even if the right child is NULL
    {
        node Tmp=FindMax(root->left); 
        root->key=Tmp->key; 
        if(Tmp==root->left)
        { 
            root->left=Tmp->left; 
            if(Tmp->left)
                Tmp->left->parent=root; 
        }
        else
        {
            Tmp->parent->right=Tmp->left; 
            if(Tmp->left)
            {
                Tmp->left->parent=Tmp->parent;  
            }
        }
        free(Tmp);
    }
    else if(root->right) // root has only one right child
    {
        root=root->right; 
        free(root->parent); 
        root->parent=NULL; 
    }
    else // no children
    {
        free(root); 
        root=NULL; 
    }
    return root; 
} 

// just like insertion of a binary search tree
node Insert(int key, node P, node T)
{
    if(!T)  // the key has found its position
    {
        T=(node)malloc(sizeof(struct Node)); 
        T->key=key; 
        T->left=T->right=NULL; 
        T->parent=P; 
    } 
    else if(key < T->key)
    {
        T->left=Insert(key, T, T->left); 
    }
    else if(key > T->key)
    {
        T->right=Insert(key, T, T->right); 
    }
    return T; 
}

// just like those of AVL, but these four deals with pointer parent
node SingleRotationleft(node T)
{
    node Left=T->left; 
    node B=Left->right; 
    node P=T->parent; 
    // adjust the tree
    Left->right=T; 
    Left->parent=P; 
    T->left=B; 
    T->parent=Left; 
    if(B)
    {
        B->parent=T; 
    }
    if(P)
    {
        if(P->left==T)
        {
            P->left=Left; 
        }
        else
        {
            P->right=Left; 
        }
    }
    return Left; 
}

// double rotation
node DoubleRotationleft(node T)
{
    T->left=SingleRotationright(T->left); 
    return SingleRotationleft(T); 
}

// single right rotation
node SingleRotationright(node T)
{
    node Right=T->right; 
    node B=Right->left; 
    node P=T->parent; 
    // adjust the tree
    Right->left=T; 
    Right->parent=P; 
    T->right=B; 
    T->parent=Right; 
    if(B)
    {
        B->parent=T; 
    }
    if(P)
    {
        if(P->left==T)
        {
            P->left=Right; 
        }
        else
        {
            P->right=Right; 
        }
    }
    return Right; 
} 

// double rotation
node DoubleRotationright(node T)
{
    T->right=SingleRotationleft(T->right); 
    return SingleRotationright(T); 
}