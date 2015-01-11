module Validate where

import Data.Char (digitToInt)

validate s = "Validate! " ++ s

toDigits :: Integer -> [Integer]
toDigits n
    | n > 0 = map (toInteger.digitToInt) (show n)
    | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse(toDigits n)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther list = reverse $ zipWith (*) (reverse list) (cycle [1,2])
