#include <iostream>
using namespace std;
struct Node {
    int data;
    Node *left;
    Node *right;
    Node *parent;
}
Node* getNext(Node * current) 
{
    if (!current) {
        return NULL;
    }
    if (current->right) {
        Node *mostLeftChild = current->right;
        while(True) {
            if(mostLeftChild->left) {
                mostLeftChild = mostLeftChild->left;
            } else {
                return mostLeftChild;
            }
        }
    }
    Node *child = current;
    Node *parent = NULL;
    while(child->parent) {
        parent= child->parent;
        if (child == parent->left) {
            return parent;
        }
        child = child->parent;
    }
    return NULL;
}
    
