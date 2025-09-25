(* Pre-order traversal in Standard ML *)
(* Binary tree data type: Empty or Node(left, value, right) *)
datatype 'data tree = Empty | Node of 'data tree * 'data * 'data tree;

(* Pre-order traversal: [current] @ left @ right *)
fun preorder Empty = []  (* Empty tree returns empty list *)
  | preorder (Node (left, value, right)) =  (* Pattern match on node *)
        [value] @
        preorder left @      (* Traverse left subtree *)
        preorder right;      (* Traverse right subtree *)

(* Example tree: same structure as other implementations *)
val myTree = Node(
    Node(Node(Empty, 4, Empty), 2, Node(Empty, 5, Empty)),  (* Left subtree *)
    1,                                                       (* Root *)
    Node(Empty, 3, Node(Empty, 6, Empty))                   (* Right subtree *)
);

(* Execute traversal - returns [1, 2, 4, 5, 3, 6] *)
preorder myTree;