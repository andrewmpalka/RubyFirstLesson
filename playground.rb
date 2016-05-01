def multiply(firstNumber, secondNumber)
  firstNumber.to_f * secondNumber.to_f
end

def divide(firstNumber, secondNumber, toggle)
  if toggle == 0
    firstNumber.to_f / secondNumber.to_f
  else
    secondNumber.to_f / firstNumber.to_f
  end
end

def add(firstNumber,secondNumber)
  firstNumber.to_f + secondNumber.to_f
end

def subtract(firstNumber,secondNumber, toggle)
  if toggle == 0
    firstNumber.to_f - secondNumber.to_f
  else
    secondNumber.to_f + firstNumber.to_f
  end
end

# puts multiply(4,5)
#
# puts divide(4,5,0)
#
# puts add(4,5)
#
# puts subtract(4,5,0)
