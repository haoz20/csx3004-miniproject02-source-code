(* In-order traversal in Standard ML *)
(* Binary tree data type: Empty or Node(left, value, right) *)
datatype 'data tree = Empty | Node of 'data tree * 'data * 'data tree;

(* In-order traversal: left @ [current] @ right *)
fun inorder Empty = []  (* Empty tree returns empty list *)
  | inorder (Node (left, value, right)) =  (* Pattern match on node *)
      inorder left @      (* Traverse left subtree *)
      [value] @           (* Add current node value *)
      inorder right;      (* Traverse right subtree *)

(* Example tree: same structure as other implementations *)
val myTree = Node(
    Node(Node(Empty, 4, Empty), 2, Node(Empty, 5, Empty)),  (* Left subtree *)
    1,                                                       (* Root *)
    Node(Empty, 3, Node(Empty, 6, Empty))                   (* Right subtree *)
);

(* Execute traversal - returns [4, 2, 5, 1, 3, 6] *)
inorder myTree;