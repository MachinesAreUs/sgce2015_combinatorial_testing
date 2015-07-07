
data State = S0 | S1 | S2

accepts :: State -> String -> Bool
accepts S0 ('a':xs) = accepts S1 xs
accepts S0 ('b':xs) = accepts S2 xs
accepts S1 ('a':xs) = accepts S2 xs
accepts S1 ('b':xs) = accepts S0 xs
accepts S2 ('a':xs) = accepts S0 xs
accepts S2 ('b':xs) = accepts S2 xs
accepts S2 _        = True
accepts _ _         = False

decide :: String -> Bool
decide = accepts S0

