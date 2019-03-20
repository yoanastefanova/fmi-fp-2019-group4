--Ex 1: Create the fn myLength which acceps as an argument a list of integers and returns the number of elements in it.

-- myLength [1, 2, 3] -> 3

myLength :: [Int] -> Int
myLength xs = if null xs then 0 else 1 + length (tail xs)


--Ex 2: A narcissistic number is one that is equal to the sum of squares of it's digits. Write a function that checks if an integer is narcisistic

-- isNarcissistic 153 -> True

toDigits :: Integer -> [Integer]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits(n `div` 10) ++ [n `mod` 10]

poweredSum :: [Integer] -> Int -> Integer
poweredSum xs numberOfDigits
  | null xs = 0
  | otherwise = (head xs) ^ numberOfDigits + (poweredSum (tail xs) numberOfDigits)

isNarcissistic :: Integer -> Bool
isNarcissistic n = n == (poweredSum nDigits digitsLength)
  where nDigits = toDigits n
        digitsLength = length nDigits
