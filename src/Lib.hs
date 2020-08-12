module Lib
    ( fact
    ) where

fact :: Integer -> Integer
fact v | v == 0 = 1
    | otherwise =
        internal_fact v 1
        where internal_fact = \x y ->
                case x of
                1 -> y
                _ -> internal_fact (x - 1) (x * y)