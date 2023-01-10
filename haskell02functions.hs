fever :: Float -> Bool
fever temp = temp > 37.8

hasFever :: [Float] -> [Float]
hasFever x = filter fever x

hasFever' :: [Float] -> [Float]
hasFever' temp = filter (\temp -> temp > 37.8) temp

itemize :: [String] -> [String]
itemize word = map (\word -> "<li>"++ word ++ "</li>") word

area :: Float -> Float
area x = pi * (x^2)

bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter (\y -> pi*(y^2) > x) y

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine y = filter (\(_,y) -> y > 37.8) y

agesIn :: [Int] -> Int -> [Int]
agesIn list ano = map (\list -> ano - list) list

startsWithA :: String -> String
startsWithA name = if head name == 'A' then "Super"++ name else name

superNames :: [String] -> [String]
superNames list = map startsWithA list

shorts :: String -> Bool
shorts word = length word < 5

onlyShorts :: [String] -> [String]
onlyShorts list = filter shorts list

main = do
  putStrLn "Vamos testar..."
  
