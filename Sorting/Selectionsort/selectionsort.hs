selectionsort [] = []
selectionsort xs = f : (selectionsort $ delete f xs)
  where
    f = minimum xs

delete x [] = []
delete x (y:ys) = if x == y then ys else y : (delete x ys)