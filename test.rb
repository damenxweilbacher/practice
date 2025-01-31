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
# numbers = [1, 2, 3, 4, 5]

# squared = numbers.map do |number| #.map creates another array
#   number * number
# end

# puts "Original Numbers #{numbers.inspect}"  .inspect is like pretty generate. prints out nicer.
# puts "Squared Numbers  #{numbers.inspect}"

# squared_numbers = []

# numbers.each do |number|
#   squared_numbers << number * number
# end
# p squared_numbers

# .map applies block of code to new element and returns array with results

# select

# an array can also be called a collection

# numbers =[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# test = numbers.select do |number| #number is the variable used
#  number.even? # .even? sends out even numbers / .odd? sends out odd numbers... # used number.even because the |variable| is number
# end

# p numbers # have variables pertain to subject that u are working with so its easier to understand it :D
# p test

# reject

# numbers =[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# odd_numbers = numbers.reject do |number|
#   number.even? #.reject will reject all even numbers since we put .even? / .odd? will reject odd numbers
# end

# p odd_numbers

# Task: Filter a list of words to find those longer than 4 letters.
# Instructions:
# Define an array of words.
# Use select to create a new array with words longer than 4 letters.
# Print the new array.

# word = ["dog", "cat", "mouse", "froggy", "horse", "alaskan bullworm", "godzilla", "anteater", "a four letter word that is way more than four letters omg......."]

# long_words = word.select do |or_more|
#  or_more.length > 4 # remember to use .length future self.....
# end

# p long_words # only prints out words with 4 or more letters.

# word = ["dog", "cat", "mouse", "froggy", "horse", "alaskan bullworm", "godzilla", "anteater", "a four letter word that is way more than four letters omg.......", "log", "fog", "hog"]

# shorter_words = word.reject do |or_more| # able to use reject to reject the words with 4 or more letters......
#   or_more.length > 4 # remember to use .length future self.....
#  end

# p shorter_words # only prints out dog/cat/log/fog/hog

# Task: Remove vowels from an array of letters.
# Instructions:
# Define an array of letters.
# Ex. - letters = ["a", "b", "c", "d", "e", "i", "o", "u"]
# Use reject to create a new array without vowels.
# Print the new array.

# letters = ["a", "b", "c", "d", "e", "i", "o", "u"]

# non_vowels = letters.reject do |vow|
#   ["a", "e", "i", "o", "u"].include?(vow) #.include? checks for certain characters that i listed in this line.
# end

# p non_vowels

# WORKS

# reduce
# numbers =[1, 2, 3, 4, 5]

# # sum = numbers.reduce do |total, number|
# #   total + number # total is 0 and number is 1-5 and the loop adds continuously until gone through all numbers which = 15.
# # end

# # puts "Sum = #{sum}"

# sum = 0 # number is declared 0 beforehand so it know what number to start adding from.
# numbers.each do |number| # doing code without using the .reduce method.
#   sum += number
# end

# p sum

# Instructions:
# Define an array of numbers.
# Use reduce to calculate the product of all numbers.
# Print the result.

# numbers = [5, 5, 5, 6] 

# prod = numbers.reduce do |total, number|
#   total * number
# end

# puts "Product: #{prod}"

# WORKS

# sort
# names = ["Charles", "Damen", "Alanna", "Noah", "Audreana", "Jess"] 


# sorted_names = names   # names.sort_by {|name| name.downcase } = sort with downcase version to be more accurate.....

# p sorted_names # prints strings in abc order by default but can also print numbers in order from least > greatest

# can also treat capitalized and lowercase characters differently, will prioritize all capitalized words before going in abc order.

# ascending_numbers = numbers.sort do |a, b|
#   a <=> b # use b <=> a to go in greatest to least/ use a <=> b to go from least to greatest.
# end

# p ascending_numbers

# One liner examples for the enumerable methods:
# # one liners 
# # each 
# numbers.each { |number| puts "The number is #{number}" }
# person.each { |key, value| puts "#{key.capitalize}: #{value}" }

# # map
# squares = numbers.map { |number| number * number }

# # select 
# even_numbers = numbers.select { |number| number.even? }

# # reject
# consonants = letters.reject { |letter| ["a", "e", "i", "o", "u"].include?(letter) }

# # reduce 
# sum = numbers.reduce(0) { |total, number| total + number }

# # sort 
# sorted_numbers = numbers.sort { |a, b| a <=> b }

# # sort_by

