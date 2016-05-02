my_details = {"key" => "Value", "name" => "Andy", "favorite color" => "White" }

print my_details

puts "\n#{my_details["name"]}"

my_hash = {a: 1, b: 2, c: 3}

puts "#{my_hash}\n"

puts "\naccess variables and symbols within a hash by using a : prefix... my_hash[:c] gives us #{my_hash[:c]}"

puts "\nadding on to an existing dictionary is simle! my_hash[:d] = 4"
my_hash[:d] = 4

puts "#{my_hash}\n"

puts "\nwhat about mixing types? what happens when I add a string value to my_hash like this... my_hash[:name] = \"Andy\""
my_hash[:name] = "Andy"

puts "#{my_hash}\n"

puts "\nlike an array you can mix types"

puts "\nwe know how to add to a hash, but how do we delete? Could it be as simple as my_hash.delete(:b)?"

my_hash.delete(:b)

puts "#{my_hash}\n"

puts "\nremember how we could iterate through an array? We can do that with hashes too!\n"
puts "let's show this explicitly with a new array"
new_hash = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7,h: 8,i: 9,j: 10}

puts new_hash

puts "\nturns out it is pretty similar to how we did it with an array... new_hash.each {|key, value| puts value}"

new_hash.each {|key, value| puts value}

puts "\nwhat if I wanted to print both the key AND the value? new_hash.each {|key, value| puts \"The key is: \#{key}, the value is: \#{value}\" }"

new_hash.each {|key, value| puts "The key is: #{key}, the value is: #{value}" }

puts "\nnow I want to delete all values greater than 5... new_hash.each {|key, value| new_hash.delete(key) if value > 5 }"

new_hash.each {|key, value| new_hash.delete(key) if value > 5 }

puts new_hash

odds = new_hash.select {|key, value| value.odd?}

puts odds
