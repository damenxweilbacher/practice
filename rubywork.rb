puts "hello world"
puts "changes made"

# def constant_time_example
#  p = 10
#  puts p
# end

# # constant_time_example

# def linear_time_example(arr)
#   arr.each do |item|
#     puts item
#   end
# end

# linear_time_example( [1, 2, 3, 4, 5] )

# loops
# while loops
# i = 0
# while i < 10
#  puts "hello world"
#  i = i + 1
# end

# until loop
# j = 5
# until j ==0
#   puts "Until #{j}"
#   j -= 1
#   # j = j - 1
# end

# for loop
# for test in 1..10
#   puts "For loop: #{test}"
# end

# times loop
# 5.times do |count|
#    puts "Ran #{count + 1} times"
# end

# each loop
# array = [1, 2, 3, 4, 5]
# array.each do |num|
#   puts num 
# end

# excercise for repeated menu until chosen to exit

 # loop do
 #   puts "Please input a number between 1 - 3"
 #   puts "1) Greeting"
 #   puts "2) Joke"
 #   puts "3) Exit"
 #   puts "4) Countdown"
 #   choice = gets.chomp.to_i
 #   puts choice
 #   if choice == 1
 #     puts "Hi, what's your name?"
 #    name = gets.chomp
 #     puts "Good evening #{name}! \n "
 #   elsif choice == 2
 #     puts "frogs like to wear open-toad shoes"
 #   elsif choice == 3
 #     puts "goodbye!"
 #     break
 #   elsif choice == 4
 #    array = [5, 4, 3, 2, 1, 0]
 #     array.each do |num|
 #      puts num
 #     end
 #     puts "Blast off! \n "
 #   else
 #     puts "try again \n "
 #   end
 # end

# create files arrays.rb with basketball player names

# players = ["Devin Booker <3", "Kevin Durant" , "Ja Morant"] # ordered from 0-2
# puts players # lists all players
# p players[0] # shows "Devin Booker <3"

# heart next to booker because he is my favorite nba player D:

# numbers = [0, 1, 2, 3, 4, 5]
# names = ["Damen", "PJ", "Noah"]

# # p names
# # names [2] = "JS" # can change name midway
# # p names

# p names
# names.pop # removes from end of array
# p names

#(title).push("said name") adds to the end of the array.

# p names
# (title).delete_at("item") deletes specific item from array

#  players = ["Devin Booker <3", "Kevin Durant" , "Ja Morant"] # ordered from 0-2
# p players # lists all players
# players.push("LeBron") # adds the goat
# p players # shows updated list

# p players
# p players.pop # removes ja morant
# p players # shows updated list

# p players
# p players [1] = "Kyrie" # changes KD to Kyrie
# p players

# p players
# players.delete_at(2) # deletes morant
# p players

#(file).insert(0, "name") adds in specific area of Array

# players = ["Devin Booker <3", "Kevin Durant" , "Ja Morant"]
# numbers = [0, 1, 2, 3, 4, 5]

# puts players.length
# puts numbers.length

# iterating over arrays

# while loop
#   i = 0
# while i <5
#   puts "hello people"
#   i += 1 # i = i + 1
# end

# i = 0
# while i < names.length
#   puts names[i]
#   i += 1 # adds onto i until reaches end of array
# end 

# each loop

# names = ["Devin Booker <3", "Kevin Durant" , "Ja Morant"]
# numbers = [0, 1, 2, 3, 4, 5]

# each loop

# numbers.each do |i|
#  puts i + 1
# end 

# for loop

# for name in names
#   puts name
# end

# each loop damen edition

# names. each do |name| # lists each player name
#   puts "Hey #{name} what a game by you guys!" # adds said quote after name
# end

# for loop damen edition

# for name in names
#   puts "You suck :/" # adds "You suck instead"
# end

# while loop damen edition

# i = 0
# while i < names.length # while i = 0 it adds 1 until is equal to length of array
#   puts "phoenix suns are the best" # message that is added
#   i += 1 # adds message until i=2
# end

# nested arrays

# numbers = [
#   [1, 2, 3],   # row 0
#   [4, 5, 6],   # row 1 # easier way to read instead of all laid out
#   [7, 8, 9]    # row 2
# ] #0, 1, 2

# p numbers[1][1] # accesses 5

# print out movies and their corresponding genres

# movies = [
# ["Lala land", "The Notebook (Makes me bawl the most :/)"], # love genre
# ["Avengers Endgame (Best movie of all time D:)", "Thor Ragnarok"] # action genre
# ]

# genre_name = ["Love movies that make me bawl:", "Action movies that get me hyped up:"] # movie genres

# movies.each_with_index do |movie, index|
#   puts genre_name[index]
#   movie.each do |movie|
#     puts "-> #{movie}"
#   end
# end

# Create a file named shopping_list.rb.
# Program Requirements:
# Start with an empty array shopping_list = [].
# Display a menu with options:
# Add item
# Remove item
# View list
# Exit
# Use a loop to keep the program running until the user chooses to exit.
# Implement each option:
# Add Item: Prompt for the item name and add it to the array.
# Remove Item: Prompt for the item name and remove it from the array if it exists.
# View List: Display all items in the list.

# shopping_list = [] # incomplete shopping list menu
# loop do
#   puts "Welcome to your shopping list!"
#   puts "What would you like to do?"
#   puts "Choose an option: (Add Item, Remove Item, View List, Exit)"
#   choice = gets.chomp
  
#   if choice == "Add Item"
#     puts "What would you like to add?"
#     item = gets.chomp
#     puts "You added #{item} to your list!"
#   elsif choice == "Remove Item"
#     puts "What would you like to remove?"
#     item = gets.chomp
#     puts "You removed #{item} from your list!"
#   elsif choice == "View List"
#     puts "Here is your list:
#     #{item}"
#   end
#   break
# end

# methods
# def greeting(name)
  #  puts "Hello #{name}!""
  # end

  # greeting("Damen")

# Task: Write a method called square that takes a number and prints its square.
# Instructions:
# Create a file called methods.rb.
# Define the square method and call it with different numbers.
# Hint - it should multiple the number by itself

# def sq(num)
#   puts "Give me any number and I will show you its square!"
#   num = gets.chomp.to_i
#   puts num * num
# end

# sq(2)
# sq(3)

# names = ["Damen", "Jess", "Noah", "Alanna", "Charles", "Audreana"]

# def greet(array)
#   array. each do |name| # will list each name in array with "whats up" on diff lines
#     p "whats up #{name}!"
#   end
# end

# greet(names)

#.upcase prints in all caps
#.downcase can print if input isnt capitalized

# Task: Write a method called sum_array that takes an array of numbers and returns their sum.
# Instructions:
# Define the sum_array method.
# Test it with different arrays.

# Task: Write a method called filter_short_words that takes an array of words and returns a new array with words longer than 3 characters.
# Instructions:
# Define the filter_short_words method.
# Test it with different word arrays.

# names = ["Damen", "Leon"]
# words = ["pig", "cow", "dog", "fish", "anteater", "shark", "godzilla"]

# def get_big_words(array) # cannot use words because words only exits outside of method
#   # p array
#   long_word = []
  
#   array.each do |word|
  
#     if word.length > 3
#       long_word.push(word)
#     end 
  
#   end
#   long_word
# end

# p get_big_words(words)

# Task: Write a method called grade_students that takes an array of student scores and returns an array of grades (A, B, C, D, F) based on the scores.
# Instructions:
# Define the grade_students method.
# Use conditionals to determine the grade.

grades = ["90", "80", "70", "60", "50"]

def get_grades(array)
  p array
end

p get_grades(grades)



