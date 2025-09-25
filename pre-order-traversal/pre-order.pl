% Pre Order Traversal in Prolog

% Base case: empty tree returns empty list
preorder(nil, []).

% Recursive case: traverse current node, left, then right
preorder(node(Left, Value, Right), Result) :-
    preorder(Left, LeftResult),        % Get left subtree result
    preorder(Right, RightResult),      % Get right subtree result
    append(LeftResult, RightResult, TempResult),  % Combine left and right
    append([Value], TempResult, Result).          % Add current node value

% Example tree structure: node(Left, Value, Right)
% Tree: 1 with children 2(4,5) and 3(6)
% Expected result: [1, 2, 4, 5, 3, 6]

% run this query to see result
% preorder(node(node(node(nil, 4, nil), 2, node(nil, 5, nil)), 1, node(nil, 3, node(nil, 6, nil))), Result).