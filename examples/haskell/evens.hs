module Evens where

import Test.QuickCheck 
import Data.Functor

newtype Word = Word Char deriving (Show, Eq)

instance Arbitrary Word where
  arbitrary = Word <$> choose ('0','1')

data State = S1 | S2

accepts :: State -> [Word] -> Bool
accepts S1 (Word '0':xs) = accepts S2 xs
accepts S1 (Word '1':xs) = accepts S1 xs
accepts S2 (Word '0':xs) = accepts S1 xs
accepts S2 (Word '1':xs) = accepts S2 xs
accepts S1 []       = True
accepts _ _         = False

decide :: [Word] -> Bool
decide = accepts S1


