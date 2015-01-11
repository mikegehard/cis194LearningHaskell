module Validate where

import Data.Char (digitToInt)

validate :: Integer -> Bool
validate number = (sumDigits $ toDigits number) `mod` 10 > 0

toDigits :: Integer -> [Integer]
toDigits n
    | n > 0 = map (toInteger.digitToInt) (show n)
    | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse(toDigits n)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther list = reverse $ zipWith (*) (reverse list) (cycle [1,2])

sumDigits :: [Integer] -> Integer
sumDigits list = foldr (+) 0 (concatMap toDigits list)