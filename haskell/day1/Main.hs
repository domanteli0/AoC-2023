module Main(main) where

import Common
import Data.Char

main :: IO ()
main = do
    lines' <- lines <$> readFile "day1/input.txt"
    let solutionFun = sum . fmap (strToNum . (\l -> [head l, last l]) . filter isDigit)
    print $ solutionFun lines'