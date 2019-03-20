--Ex 1: Create the function squaresList n which returns a list of all squares below a certain number N.
-- squaresList 10 -> [1, 4, 9]

squaresList :: Integer -> [Integer]
squaresList n = squaresListHelper n 1

squaresListHelper n k
    | k ^ 2 > n = []
    | otherwise = k ^ 2 : squaresListHelper n (k + 1)
