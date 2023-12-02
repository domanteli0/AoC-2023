module Main(main) where

import Data.Char
import Data.Maybe
import Data.List
import qualified Common as C

main :: IO ()
main = do
    lines' <- lines <$> readFile "day1/input.txt"
    -- part1
    -- let solutionFun = sum . fmap (strToNum . (\l -> [head l, last l]) . filter isDigit)

    -- part2
    let solutionFun = C.strToNum . concat . (\l -> [show (head l), show (last l)]) . concatMap (mapMaybe Main.strToNum . inits) . tails
    print $ sum $ map solutionFun lines'

strToNum :: String -> Maybe Int
strToNum "one"   = Just 1
strToNum "two"   = Just 2
strToNum "three" = Just 3
strToNum "four"  = Just 4
strToNum "five"  = Just 5
strToNum "six"   = Just 6
strToNum "seven" = Just 7
strToNum "eight" = Just 8
strToNum "nine"  = Just 9
strToNum "1"     = Just 1
strToNum "2"     = Just 2
strToNum "3"     = Just 3
strToNum "4"     = Just 4
strToNum "5"     = Just 5
strToNum "6"     = Just 6
strToNum "7"     = Just 7
strToNum "8"     = Just 8
strToNum "9"     = Just 9
strToNum _       = Nothing
