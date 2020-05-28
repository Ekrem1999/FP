import Data.List
-- 1
-- Определите функцию, возвращающую последний элемент списка.
--

_last l = if null (tail l) then head l else _last (tail l)

--5
--Условие: Определите функцию, упаковывающую последовательные дубликаты списка
--в подсписки вида (M N), где N - элемент списка, M - количество повторений. Например, [’a’, ’a’, ’a’, ’a’, ’b’, ’c’, ’c’, ’a’, ’a’, ’d’, ’e’,
--’e’, ’e’, ’e’] должен быть переведен в [(4, ’a’), (1, ’b’), (2, ’c’),(2, ’a’), (1, ’d’), (4, ’e’)].
--
encode [] = []
encode (x:xs) = (length $ x : takeWhile (==x) xs, x)
                 : encode (dropWhile (==x) xs)
                 
                 
                 
 --12. Определите функцию, разбивающую список (a b с d...) на пары ((а b) (сd)...).             
 --            
 group [] = []
gpoup [x] = [(x,x)]
group (x1:x2:xs) = (x1,x2) : (group xs)

main = do
    putStrLn "Test #1"
    let someList = [1,2,3,4,5]
    _test someList (_last someList)

main = print (group [5,4,3,2,1,2,3] )
