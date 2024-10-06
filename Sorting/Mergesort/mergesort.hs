splitList ls = (take i ls, drop i ls)
  where i = length ls `div` 2
  
merge [] l2 = l2
merge l1 [] = l1
merge (x:xs) (y:ys) = if x <= y then x : merge xs (y:ys) else y : merge (x:xs) ys

mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort l1) (mergesort l2)
  where (l1,l2) = splitList xs
  
quicksort [] = []
quicksort [x] = [x]
quicksort (x:xs) = quicksort filterLeft ++ [x] ++ (quicksort filterRight)
  where filterLeft = filter (\y -> y <= x) xs
        filterRight = filter (\y -> y > x) xs
        