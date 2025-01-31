# Task: Use map to capitalize a list of names.
# Instructions:
# Create a file named enumerables.rb.
# Define an array of names in lowercase letters.
# Use map to create a new array with each name capitalized.
# Print the new array.

students = ["damen", "noah", "alanna", "audreana"] # original array with lowercase fronting

students.map do |student| # .map will print out names in all caps (.upcase) or with uppercase fronting (.capitalize)
end

uppercase_fronting = students.map do |cap|
  cap.capitalize #.capitalize gives uppercase fronting. # .upcase can print out in all caps...
end

puts "lowercase fronting: #{students.inspect}" # calls array from line #8

puts "Uppercase Fronting: #{uppercase_fronting.inspect}" # calls uppercase fronting from l#13

