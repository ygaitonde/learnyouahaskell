doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 
                        then x 
                        else x * 2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
-- Which right triangle has integers for all side and all sides 
-- <= 10 has a perimeter of 24?

-- generate all triangles with sides <= 10
triangles = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]
-- generate all right triangles with sides <= 10 
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
-- generate all right trangles with sides<=10 and perimeter = 24
finalRightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
