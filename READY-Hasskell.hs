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
                 
                                            
-- №12
-- Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
split [] = [] 
split [x] = [(x,x)] 
split (x1:x2:xs) = (x1,x2) : (split xs)

main = do
    putStrLn "Test №1"
       print (myLast [1,2,3,4,5])
       
       
       putStrLn "Тest №5"
       print (encode ['a', 'a', 'a', 'b', 'b'])
       print (encode ['a', 'a', 'b', 'b', 'b', 'c', 'c'])
       print (encode ['a', 'a', 'a', 'b', 'b', 'b', 'c', 'c', 'c', 'a'])
       
       putStrLn "Test №12"
       print (split ["a","b","c","d","e","f","g"] ) 
       print (split [1,2,3,4,5] )
