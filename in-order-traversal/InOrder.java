// In-order traversal implementation
public class InOrder {
    // Recursive pre-order traversal with printing
    void printInorder(Node node) {
        if (node == null)               // Base case: null node
            return;

        printInorder(node.left);      // Traverse left subtree
        System.out.print(node.data + " ");  // Print current node
        printInorder(node.right);     // Traverse right subtree
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
        
        // Output: 4 2 5 1 3 6
        InOrder tree = new InOrder();
        tree.printInorder(root);
    }
}