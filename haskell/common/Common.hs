module Common (split, charToDigit, strToNum) where

import  Data.List

split :: Eq a => a -> [a] -> [[a]]
split _ [] = []
split e l =
    f : split e (drop 1 ls)
        where
          (f,ls) = span (/=e) l

charToDigit :: Char -> Int
charToDigit = read . singleton

strToNum :: String -> Int
strToNum = read