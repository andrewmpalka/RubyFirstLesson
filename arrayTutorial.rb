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

# array = (69..420).to_a

array = (1..10).to_a.shuffle!
array.push(420)
array.unshift("THIS IS THE FIRST ITEM NOW")
array << "THIS ITEM IS THE LAST ITEM, BUT WE'RE GONNA REMOVE IT BEFORE YOU EVER EVEN SEE IT"
array.pop
array << 2
array << 3
array << 69
# The bang mutates the caller
array.uniq!

alt = array

alt.each {|thisIsHowYouReferToAnIteratedElementOfAnArray| puts thisIsHowYouReferToAnIteratedElementOfAnArray }

example = ["These", "words", "are", "all", "elements", "of", "an", "array", "joined", "together", "using", "the", ".join(' ')", "method."]
thisReallyHighLevel = example.join(' ')

puts thisReallyHighLevel
