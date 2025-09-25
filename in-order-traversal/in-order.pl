% In Order Traversal in Prolog

% Base case: empty tree returns empty list
inorder(nil, []).

% Recursive case: traverse left, current node, then right
inorder(node(Left, Value, Right), Result) :-
    inorder(Left, LeftResult),        % Get left subtree result
    inorder(Right, RightResult),      % Get right subtree result
    append(LeftResult, [Value], TempResult),      % Add current node after left
    append(TempResult, RightResult, Result).      % Add right subtree last

% Example tree structure: node(Left, Value, Right)
% Tree: 1 with children 2(4,5) and 3(6)
% Expected result: [4, 2, 5, 1, 3, 6]

% run this query to see result
% inorder(node(node(node(nil, 4, nil), 2, node(nil, 5, nil)), 1, node(nil, 3, node(nil, 6, nil))), Result).