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

flatten_tree(nil, 0).
flatten_tree(leaf(X)):-
	accum is [X],
	flatten_tree(accum, tree(Left, X, Right), Flatten).

flatten_tree(accum, tree(Left, X, Right), Flatten) :-
	flatten_tree(accum, Left, L),
	flatten_tree(accum, Right, R),
	reverse(Flatten, accum).

parse_arith(Tokens, AST):-
	AST is Tokens.

wiki_nfa(nfa(x, [ x - 0 - x, x - 1 - x, x - 1 - a,
		  a - 0 - b, a - 1 - b,
		  b - 0 - c, b - 1 - c,
		  c - 0 - d, c - 1 - d
		], [d])).	

nfa_sim(NFA, Inputs, States):-
	N is NFA.
