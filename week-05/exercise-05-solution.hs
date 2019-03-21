
-- Exercise 1: Let's write a function that accepts two ordered lists and merges them.

--merge [1, 3, 5] [2, 4, 6] =>>> [1, 2, 3, 4, 5, 6]

merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys

-- Exercise 2: Write a function accepting a list of Integers and returning a tuple of two integer lists - odd and even.

--splitPlz [1, 2, 3] =>>> ([1,3], [2])

splitPlz :: [Integer] -> ([Integer], [Integer])
splitPlz xs = ([x | x <- xs, x `mod` 2 == 1], [x | x <- xs, x `mod` 2 == 0])

-- Exercise 3: Let's write a function that checks if a string starts with another,

--isPrefix "cat" "dog" => False
--isPrefix "ca" "cat" => True

isPrefix :: String -> String -> Bool
isPrefix [] ys = True
isPrefix (x:xs) [] = False
isPrefix (x:xs) (y:ys) = (x == y) && isPrefix xs ys

-- (We did this week 04) Exercise 4: Let's write an fn that returns the number of occurrences of the smallest number in it.

--occurrencesMin [1, 2, 3, 4, 5, 1, 1, 1] =>>> 4

occurencesMin :: [Integer] -> Int
occurencesMin xs = length [x | x <- xs, x == minX] where
    minX = minimum xs

-- Exercise 5: Can we really fast generalize it to if a string is contained in another?

strContains :: String -> String -> Bool
strContains (x:xs) [] = False
strContains xs ys
  | isPrefix xs ys = True
  | strContains xs (tail ys) = True
  | otherwise = False
