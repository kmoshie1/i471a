sum_tree(nil, 0).
sum_tree(leaf(X), X).
sum_tree(tree(Left, X, Right), Sum) :-
	sum_tree(Left, L),
	sum_tree(Right, R),
	Sum is X + L + R.


