#include <stack>
#include <string>
#include <vector>
#include <iostream>
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
            cout << currentRoot->data << "->";
            s.push(currentRoot);
            currentRoot = currentRoot->left;
        }
        Node *backTraceNode = s.top();
        s.pop();
        currentRoot = backTraceNode->right;
     }
}

vector<string> printBinaryTree_r(Node *root)
{
    vector<string> paths;
    if(!root) {
        return paths;
    }
    getPathsHelper(root, paths, to_string(root->data));
    return paths;
}
void getPathsHelper(Node *root, vector<string>& paths, string s) 
{
    if(!root->left && !root->right) {
        paths.push_back(s);
        return;
    }
    if(root->left) {
        getPathsHelper(root->left, paths, s+"->"+to_string(root->left->data));
    }
    if(root->right) {
        getPathsHelper(root->right, paths, s+"->"+to_string(root->right->data));
    }
}
        
