(* Binary tree data type: Empty or Node(left, value, right) *)
datatype 'data tree = Empty | Node of 'data tree * 'data * 'data tree;

(* Post-order traversal: left @ right @ [current] *)
fun postorder Empty = []  (* Empty tree returns empty list *)
  | postorder (Node (left, value, right)) =  (* Pattern match on node *)
      postorder left @      (* Traverse left subtree *)
      postorder right @     (* Traverse right subtree *)
      [value];              (* Add current node value *)

(* Example tree: same structure as other implementations *)
val myTree = Node(
    Node(Node(Empty, 4, Empty), 2, Node(Empty, 5, Empty)),  (* Left subtree *)
    1,                                                       (* Root *)
    Node(Empty, 3, Node(Empty, 6, Empty))                   (* Right subtree *)
);

(* Execute traversal - returns [4, 5, 2, 6, 3, 1] *)
postorder myTree;