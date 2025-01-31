# enumerable and iterator

# each 
# numbers.each do |number|
#   puts number
# end

# person = {
#  "name" => "alice",
#  "age" => 30,
#  "city" => "new york"
# }

# person.each do |key, value|
#   puts "#{key}: #{value}"
# end

# map
numbers = [1, 2, 3, 4, 5]

# squared = numbers.map do |number| #.map creates another array
#   number * number
# end

# puts "Original Numbers #{numbers.inspect}"  .inspect is like pretty generate. prints out nicer.
# puts "Squared Numbers  #{numbers.inspect}"

squared_numbers = []

numbers.each do |number|
  squared_numbers << number * number
end
p squared_numbers