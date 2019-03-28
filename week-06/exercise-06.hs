--Lecture 6: Homework, higher order functions, even more lists.

-- Exercise 1:  Write a function called "divisors" that accepts a single digit and returns a list with all it's divisors.

-- divisors 10 -> [1, 2, 5]

-- Exercise 2: Write a function that receives a list of words xs and a minimum number of vowels n and returns only the words with at least n vowels.

-- atLeastVowel ["cat" "dog" "doggo" "kitten" "rat"] 2 => ["doggo" "kitten"]


-- Exercise 3: Write a method accepting a list of 1 argument functions and returns another fn for their composed execution.

-- compose [(\x -> x + 1), (\x -> x + 1)] $ 5 =>> 7


-- Exercise 4: Every positive even number greater than 2 is the sum of two primes. Mind. Blown!

-- Get a number, return the list of the two. Map and filter, plz.
