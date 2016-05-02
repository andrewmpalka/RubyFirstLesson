load 'arrayTutorial.rb'

def checker(anything)
    anything = anything.to_i
    if anything > 0
      return true
  else
    return false
  end
end

puts "Please enter your first name"
firstName = gets.chomp
puts "Please enter your last name"
lastName = gets.chomp


name = firstName.capitalize + " " + lastName.capitalize
puts "Welcome to the analyzer program, #{name}"
puts "\n\n\nAnalyzing your name now\n\n\n"

index = 0
dots = ""

while index < 20 do
  dot = "."
  dots = dot
  while dots.length < index + 1 do
    dots = dots + dot
  end
  puts "#{dots}"
  index +=1
end

index = 19

while index > 0 do

  while dots.length > index do
    dots = dots[0...index]
  end
  puts "#{dots}"
  index -=1
end

puts "\n\n\nDone"
puts "Your name is #{name}"
name = name.downcase
puts "Your first name contains #{firstName.length} characters"
puts "Your last name contains #{lastName.length} characters"
puts "Your full name reversed is #{name.reverse}"

puts "\n\n\nThink of a whole number.\nNow enter it."
firstNumber = gets.chomp

while checker(firstNumber) == false do
  puts "Try again."
  firstNumber = gets.chomp
end

firstNumber = firstNumber.to_i
puts "Good choice!"
puts "Think of another whole number.\nNow enter it."
secondNumber = gets.chomp
while checker(secondNumber) == false do
  puts "Try again."
  secondNumber = gets.chomp
end
secondNumber = secondNumber.to_i

puts "Even better! \n\n\nHmm...\nThinking\n\n\nYour numbers were #{firstNumber} and #{secondNumber}"

puts "Now choose what you want want to do with your numbes.\n\n Choose 1 to add\n2 to subtract\n3 to multiply\n4 to divide"
choice = gets.chomp

choice = choice.to_i

while (1..4).include?(choice) == false do
  puts "Try again."
  choice = gets.chomp
end

choice = choice.to_i

case choice
when 1
  puts "Together these numbers add up to #{add(firstNumber,secondNumber)}"
when 2
  puts "The defecit between these numbers is #{subtract(firstNumber,secondNumber,0)}"
when 3
  puts "Together these numbers multiply to #{multiply(firstNumber,secondNumber)}"
when 4
  puts "The result of dividing these two numbers is #{divide(firstNumber,secondNumber, 0)}"
end



# puts "Together these numbers add up to #{firstNumber + secondNumber}"
# puts "Together these numbers add up to #{add(firstNumber,secondNumber)}"
# puts "Dividing the first by the second yields #{firstNumber.to_f/secondNumber.to_f}"


puts "\n\n\nEnding program now"
