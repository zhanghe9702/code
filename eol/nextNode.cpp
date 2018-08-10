using namespace std;
struct Node {
    int data;
    Node *left;
    Node *right;
    Node *parent;
};
Node* getNext(Node * current) 
{
    if (!current) {
        return nullptr;
    }
    if (current->right) {
        Node *lookupNode = current->right;
        while(true) {
            if(lookupNode->left) {
                lookupNode = lookupNode->left;
            } else {
                return lookupNode;
            }
        }
    }
    Node *child = current;
    Node *parent = nullptr;
    while(child->parent) {
        parent= child->parent;
        if (child == parent->left) {
            return parent;
        }
        child = child->parent;
    }
    return nullptr;
}
    
