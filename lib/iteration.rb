def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  outer_array = []
  row_index = 0 
  while row_index < src.count do 
    element_index = 0 
    toppings = []
    while element_index < src[row_index].count do
      toppings << src[row_index][element_index]
      element_index += 1 
      end
      outer_array << "I love #{toppings[0]} and #{toppings[1]} on my pizza"
    row_index += 1 
  end
  outer_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  result = []
  i = 0 
  while i < src.count do
    element_index = 0 
    inner = []
    while element_index < src[i].count do
      if src[i][0] > src[i][1]
        inner << src[i][0]
      else
        inner << src[i][1]
        element_index += 1
      end
       
    end
    result << inner 
    i += 1 
  end
  result
  
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = []
  i = 0 
  while i < src.count do 
    if ((src[i][0] % 2 == 0) && (src[i][1] % 2 == 0))
      total += (src[i][0] + src[i][1])
    end
      i += 1 
    end
    total 
end
