add n1 n2 = n1 + n2

plus = (+)

conc ls1 ls2 = ls1 ++ ls2

--when the parenthese are omitted on the second-last line above, it gives an error because you are trying to concatenate conc which isn't a list like the rest
--the last line results in an error because you can not concatenate a string of characters and a number list

add10 = add 10

plus5 = plus 5

concHello = conc "hello"
