
first_name = "person"

def hello(anything)
  if anything.nil?
    puts "Enter your name please"
  else
    puts "hello #{anything}"
  end
end

hello(nil)

first_name = gets.chomp

hello(first_name)
