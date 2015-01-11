module Main (main) where

import Validate (validate)
import System.Environment

-- | 'main' runs the main program
main :: IO ()
main = getArgs >>= print . head


