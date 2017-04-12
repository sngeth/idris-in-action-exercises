module Main

-- Ex 1
tuple : (String, String, String)
tuple = ("A", "B", "C")

list1 : List String
list1 = ["A", "B", "C"]

list2 : ((Char, String), Char)
list2 = (('A', "B"), 'C')

-- Ex 2
palindrome : String -> Bool
palindrome word =
  word == reverse word

-- Ex 3
palindrome2 : String -> Bool
palindrome2 w =
  let
    word = toLower w
  in
    word == reverse(word)

-- Ex 4
palindrome3 : String -> Bool
palindrome3 word =
  palindrome2 word && length word > 10

-- Ex 5
palindrome4 : Nat -> String -> Bool
palindrome4 num word =
  palindrome2 word && length word > num

-- Ex 6
counts : String -> (Nat, Nat)
counts word =
  (length $ words word, length $ unpack word)

-- Ex 7
top_ten : Ord a => List a -> List a
top_ten list =
  take 10 $ sortBy(\x, y => y `compare` x) $ list
