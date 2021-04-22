add n1 n2 = n1 + n2

plus = (+)

conc ls1 ls2 = ls1 ++ ls2

--when the parenthese are omitted on the second-last line above, it gives an error because you are trying to concatenate conc which isn't a list like the rest
--the last line results in an error because you can not concatenate a string of characters and a number list

add10 = add 10

plus5 = plus 5

concHello = conc "hello"

first (v, _) = v

second (_, v) = v

fst3 (v, _, _) = v

snd3 (_, v, _) = v

sumFirst2 :: Num a => [a] -> a
sumFirst2 [] = 0
sumFirst2 (x) = x !! 0 + x !! 1


cartesianProduct ls1 ls2 = [ (x, y) | x <- ls1, y <- ls2 ]
cartesianProductIf ls1 ls2 predicate = [ (x, y) | x <- ls1, y <- ls2, predicate x y ]


oddEvenPairs n = [(x,y) | x <- [1..n], odd x, 1 <= x, y <- [1..n], even y, y <= n]
