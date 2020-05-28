-- 1
-- Определите функцию, возвращающую последний элемент списка.
--

_last l = if null (tail l) then head l else _last (tail l)

