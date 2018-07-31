#include <stack>
using namespace std;
struct Node {
    int data;
    Node *left;
    Node *right;
};
void printBinaryTree(Node *root)
{
    Node *currentRoot = root;
    stack<Node *> s;
    while(currentRoot || !s.empty()) {
        while(currentRoot) {
            cout << currentRoot->data << "-->";
            s.push(currentRoot);
            currentRoot = currentRoot->left;
        }
        Node *backTraceNode = s.top();
        s.pop();
        currentRoot = backTraceNode->right;
     }
}
void printBinaryTree_r(Node *root)
{
    if (!root) {
        printBinaryTree_r(root->left);
        cout << root->data << "-->";
        printBinaryTree_r(root->right);
    }
}
int main() 
{

}
        
