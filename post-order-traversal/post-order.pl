% Post Order Traversal in Prolog

% Base case: empty tree returns empty list
postorder(nil, []).

% Recursive case: traverse left, right, then current node
postorder(node(Left, Value, Right), Result) :-
    postorder(Left, LeftResult),        % Get left subtree result
    postorder(Right, RightResult),      % Get right subtree result
    append(LeftResult, RightResult, TempResult),  % Combine left and right
    append(TempResult, [Value], Result).          % Add current node value

% Example tree structure: node(Left, Value, Right)
% Tree: 1 with children 2(4,5) and 3(6)
% Expected result: [4, 5, 2, 6, 3, 1]

% run this query to see result
% postorder(node(node(node(nil, 4, nil), 2, node(nil, 5, nil)), 1, node(nil, 3, node(nil, 6, nil))), Result).