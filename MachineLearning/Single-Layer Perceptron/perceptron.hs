type Weights = [Double]
type Datapoint = ([Double],Double)

data Perceptron = Perceptron Weights
  deriving (Show, Eq)
  
buildPerceptron :: Weights -> Double -> Perceptron
buildPerceptron w b = Perceptron (b:w)

buildDatapoints :: [Datapoint] -> [Datapoint]
buildDatapoints ds = map (\(xs,y) -> ((1.0:xs),y)) ds

output :: (Num a) => Perceptron -> [Double] -> a
output (Perceptron w) x = if v > 0 then 1 else 0
  where v = sum . map (uncurry (*)) $ zip w x

learn :: Perceptron -> [Datapoint] -> Perceptron
learn p ds = if finalB then finalP else learn finalP ds
  where (finalP,finalB) = foldl (\(pCur,bVal) d -> let pNew = learnStep pCur d in (pNew,bVal && pCur == pNew)) (p,True) ds

learnStep :: Perceptron -> Datapoint -> Perceptron
learnStep p@(Perceptron w) (x,y)   | y == 1.0 && value <= 0.0 = Perceptron (map (uncurry (+)) $ zip w x) 
                                   | y == 0.0 && value >= 1.0 = Perceptron (map (uncurry (-)) $ zip w x)
                                   | otherwise = p
  where value = output p x 