sum_tree(nil, 0).
sum_tree(leaf(X), X).
sum_tree(tree(Left, X, Right), Sum) :-
	sum_tree(Left, L),
	sum_tree(Right, R),
	Sum is X + L + R.

naive_flatten_tree(nil, 0).
naive_flatten_tree(leaf(X), [X]).
naive_flatten_tree(tree(Left, X, Right), Flatten) :-
	naive_flatten_tree(Left, L),
	naive_flatten_tree(Right, R),
	append(L, [X|R], Flatten).


