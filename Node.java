// Binary tree node with integer data
class Node {
    int data;           // Node value
    Node left, right;   // Child references
    
    // Constructor sets data and null children
    Node(int v) {
        data = v;
        left = right = null;
    }
}