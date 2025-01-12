```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  let sortedNumbers = sort numbers
  print sortedNumbers -- This will print [1,2,3,4,5]

  let moreNumbers = [5,4,3,2,1]
  let sortedMoreNumbers = sort moreNumbers
  print sortedMoreNumbers --This will also print [1,2,3,4,5]

  let stringNumbers = ["5","4","3","2","1"]
  let numericalStringNumbers = map read stringNumbers :: [Int]
  let sortedStringNumbers = sort numericalStringNumbers
  print sortedStringNumbers -- This will print [1,2,3,4,5]
```