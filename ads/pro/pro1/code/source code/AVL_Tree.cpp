#include <stdio.h>
#include <stdlib.h>
#include <time.h>
typedef struct node *node_ptr;
// define  the structure of the node in the AVL tree
struct node
{
    int value;
    int height;
    node_ptr left_child;
    node_ptr right_child;
};

static int getHeight(node_ptr n);
node_ptr left_rotation(node_ptr root);
node_ptr right_rotation(node_ptr root);
node_ptr LL_rotation(node_ptr root);
node_ptr RR_rotation(node_ptr root);
node_ptr LR_rotation(node_ptr root);
node_ptr RL_rotation(node_ptr root);
node_ptr Find_AVL(int value, node_ptr tree);
node_ptr FindMax_AVL(node_ptr tree);
node_ptr FindMin_AVL(node_ptr tree);
node_ptr Insert_AVL(int value, node_ptr tree);
node_ptr Delete_AVL(int value, node_ptr tree);

int main(int argc,char* argv[])
{
    node_ptr root;
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
        root=Insert_AVL(key[i], root); 

    }
    finish=clock(); // the end of insertion
    printf("Insert %d keys into the tree costs: %lf\n",N,(double)(finish - start) / CLOCKS_PER_SEC);
    for(int i=0;i<N;i++)
    {
        scanf("%d",&key[i]);
    }
    start = clock();    // the start of deletion
    for (int i = 0; i < N; i++)
    {
        root = Delete_AVL(key[i],root);
    }
    finish=clock();     // the end of deletion
    printf("Delete keys costs: %lf\n",(double)(finish - start) / CLOCKS_PER_SEC);

    return 0; 
}

// for debug
static int getHeight(node_ptr n)
{
    if (n == NULL)
        return -1;
    else
        return n->height;
}

// single left rotation
node_ptr left_rotation(node_ptr root)
{
    node_ptr new_root = NULL;
    // adjust the tree
    new_root = root->right_child;
    root->right_child = new_root->left_child;
    new_root->left_child = root;

    int r_left_height = getHeight(root->left_child),
        r_right_height = getHeight(root->right_child);
    int nr_left_height = getHeight(new_root->left_child),
        nr_right_height = getHeight(new_root->right_child);
    // update the height
    root->height = 1 + (r_left_height > r_right_height ? r_left_height : r_right_height);
    new_root->height = 1 + (nr_left_height > nr_right_height ? nr_left_height : nr_right_height);

    return new_root;
}

// single right rotation
node_ptr right_rotation(node_ptr root)
{
    node_ptr new_root = NULL;
    // adjust the tree
    new_root = root->left_child;
    root->left_child = new_root->right_child;
    new_root->right_child = root;

    int r_left_height = getHeight(root->left_child),
        r_right_height = getHeight(root->right_child);
    int nr_left_height = getHeight(new_root->left_child),
        nr_right_height = getHeight(new_root->right_child);
    // update the height
    root->height = 1 + (r_left_height > r_right_height ? r_left_height : r_right_height);
    new_root->height = 1 + (nr_left_height > nr_right_height ? nr_left_height : nr_right_height);

    return new_root;
}

node_ptr LL_rotation(node_ptr root)
{
    return right_rotation(root);
}

node_ptr RR_rotation(node_ptr root)
{
    return left_rotation(root);
}

// double rotation
node_ptr LR_rotation(node_ptr root)
{
    root->left_child = left_rotation(root->left_child);
    return right_rotation(root);
}

// double rotation
node_ptr RL_rotation(node_ptr root)
{
    root->right_child = right_rotation(root->right_child);
    return left_rotation(root);
}

// find the node containing the value
node_ptr Find_AVL(int value, node_ptr tree)
{
    if (tree->value == value)
        return tree;
    else if (tree->value < value)
        return Find_AVL(value, tree->right_child);
    else
        return Find_AVL(value, tree->left_child);
}

// find the node containing the maximum value
node_ptr FindMax_AVL(node_ptr tree)
{
    if (tree->right_child == NULL)
        return tree;
    else
        return FindMax_AVL(tree->right_child);
}

// find the node containing the minimum value
node_ptr FindMin_AVL(node_ptr tree)
{
    if (tree->left_child == NULL)
        return tree;
    else
        return FindMax_AVL(tree->left_child);
}

// insert new value to the tree
node_ptr Insert_AVL(int value, node_ptr tree)
{
    if (tree == NULL)
    {
        tree = (node_ptr)malloc(sizeof(struct node)); // create a one-node tree
        if (tree == NULL)
            printf("error!");
        else
        {
            tree->value = value;
            tree->height = 0;
            tree->left_child = tree->right_child = NULL;
        }
    }
    else if (value < tree->value)
    {
        // the node should be inserted in the left subtree
        tree->left_child = Insert_AVL(value, tree->left_child);

        int left_height = getHeight(tree->left_child),   // the height of left subtree
            right_height = getHeight(tree->right_child); // the height of right subtree

        if (left_height - right_height >= 2) // rotate to keep balanced
            if (value < tree->left_child->value)
                tree = LL_rotation(tree);
            else
                tree = LR_rotation(tree);
    }
    else if (value > tree->value)
    {
        tree->right_child = Insert_AVL(value, tree->right_child);

        int left_height = getHeight(tree->left_child),   // the height of left subtree
            right_height = getHeight(tree->right_child); // the height of right subtree

        if (right_height - left_height >= 2) // rotate to keep balanced
        {
            if (value > tree->right_child->value)
                tree = RR_rotation(tree);
            else
                tree = RL_rotation(tree);
        }
    }

    int left_height = getHeight(tree->left_child),   // the height of left subtree
        right_height = getHeight(tree->right_child); // the height of right subtree
    tree->height = 1 + (left_height > right_height ? left_height : right_height);
    return tree;
}

// remove a value from the tree
node_ptr Delete_AVL(int value, node_ptr tree)
{
    if (tree->value == value)
    {
        if (tree->left_child != NULL && tree->right_child != NULL)
        {
            // the deleted node has left child
            node_ptr max_in_left = FindMax_AVL(tree->left_child);
            tree->value = max_in_left->value; // use left max value to subtitude the deleted node
            tree->left_child = Delete_AVL(max_in_left->value, tree->left_child);
        }
        else
        {
            // at least one of its child is NULL
            node_ptr temp_node = tree;
            if (tree->left_child == NULL)
            {
                tree = tree->right_child;
            }
            else if (tree->right_child == NULL)
            {
                tree = tree->left_child;
            }

            free(temp_node);
        }
    }
    else if (tree->value > value)
        tree->left_child = Delete_AVL(value, tree->left_child); // the deleted node is in the left subtree of the node tree
    else if (tree->value < value)
        tree->right_child = Delete_AVL(value, tree->right_child); // the deleted node is in the right subtree of the node tree

    if (tree != NULL)
    {
        if (getHeight(tree->left_child) - getHeight(tree->right_child) >= 2) // rotate to keep balanced
            if (getHeight(tree->left_child->left_child) > getHeight(tree->left_child->right_child))
                tree = LL_rotation(tree);
            else
                tree = LR_rotation(tree);
        if (getHeight(tree->right_child) - getHeight(tree->left_child) >= 2) // rotate to keep balanced
            if (getHeight(tree->right_child->left_child) < getHeight(tree->right_child->right_child))
                tree = RR_rotation(tree);
            else
                tree = RL_rotation(tree);

        int left_height = getHeight(tree->left_child),   // the height of left subtree
            right_height = getHeight(tree->right_child); // the height of right subtree
        tree->height = 1 + (left_height > right_height ? left_height : right_height);
    }

    return tree;
}

