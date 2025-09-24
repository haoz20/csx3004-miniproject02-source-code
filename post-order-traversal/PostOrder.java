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

// Post-order traversal implementation
public class PostOrder{
    // Recursive post-order traversal with printing
    void printPostorder(Node node) {
        if (node == null)               // Base case: null node
            return;

        printPostorder(node.left);      // Traverse left subtree
        printPostorder(node.right);     // Traverse right subtree
        System.out.print(node.data + " ");  // Print current node
    }

    // Main method creates tree and executes traversal
    public static void main(String[] args) {
        // Build tree: 1 with children 2(4,5) and 3(6) 
        Node root = new Node(1);
        root.left = new Node(2);
        root.right = new Node(3);
        root.left.left = new Node(4);
        root.left.right = new Node(5);
        root.right.right = new Node(6);
        
        // Output: 4 5 2 6 3 1
        PostOrder tree = new PostOrder();
        tree.printPostorder(root);
    }
}