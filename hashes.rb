# hash
# Task: Create a hash representing yourself with keys for "name", "age", and "hobby".
# Instructions:
# Create a file named hashes.rb.
# Define the hash and access each value.

# myself = {
#  name: => "Damen Weilbacher",
#  age:  => 19,
#  hobby: => "playing video games, fixing cars, learning new things" for when using hashes with different signs. grabbing data is different
# }

# p myself[:name]
# p myself[:age]
# p myself[:hobby]

# string/arrow syntax 

# myself = {
#  "name" => "Damen Weilbacher",
#  "age"  => 19,
#  "hobby" => "playing video games, fixing cars, learning new things"
# }

# p myself["name"] #p myself["name"] = dameb / changes name from damen to dameb.
# p myself["age"]           #["age"] = 20 / changes age from 19 to 20.
# p myself["hobby"]

# puts "My name is #{myself["name"]}" 
# puts "I am #{myself["age"]}"
# puts "I love #{myself["hobby"]}"

# numbers = [1, 2, 3, 4, 5]
# p numbers
# numbers[0] = 10 # whatever number is in bracket can reprint with equal sign after hash (redeclaring values from hashes.)

#.push() can add to array

# symbol syntax

# person ={
#   name: "Damen"
#   age: 19
#   city: "Yigo"
# }

# p person
# # person [:name] = "Jess" # redeclares name
# # person [:country] = "FSM" # add the key value pair of country FSM
# # person [:phone number] = 911 # adding key value pair of phone nmuber = 911
# person.delete(:city) # deletes the key value pair where the pair is city (change value to delete any value of choice)
# p person 

# Task: Modify your person hash:
# Add a new key-value pair for :favorite_food.
# Update your :hobby.
# Remove the :age key.

# myself = {
#    "name" => "Damen Weilbacher",
#    "age"  => 19,
#    "hobby" => "playing video games, fixing cars, learning new things"
#   }

#   puts "My name is #{myself["name"]}" 
#   puts "I am #{myself["age"]}"
#   puts "I love #{myself["hobby"]}"

#    myself ["favorite_food"] = "Japanese Curry"
#    myself ["hobby"] = "Spending time with family."
#    myself.delete("age")

#   puts "I love #{myself["hobby"]}"
#   puts "My favorite food is #{myself["favorite_food"]}"
#   puts "#{myself["age"]}"

# myself = {    
#   "name" => "Damen Weilbacher",    
#   "age"  => 19,
#   "hobby" => "playing video games, fixing cars, learning new things"
#    }

# iteration over the hash
#   myself.each do |key,value|
#     puts "key = #{key} and value = #{value}" # lists keys and values
#   end

# Task: Create a program that stores information about multiple people.
# Instructions:
# In your hashes.rb.
# Define an array of hashes, where each hash represents a person with keys for :name, :age, and :city.
# Iterate over the array to print out each person's information.

# people = [
# { name: "Damen", age: 19, city: "Yigo" },
# { name: "Kevin", age: 27, city: "New York" },
# { name: "Joe", age: 49, city: "Denver" }
# ]

# puts "Enter a number to find out about the following people:"   # different idea from exercise lol
# puts "
# 0. Damen
# 1. Kevin
# 2. Joe
# 3. Exit
# "

#   choice = gets.chomp.to_i
#     if choice <= 2
#      puts "Here is the following information:"
#      p people[choice]
#     end

#   if choice == 3
#     puts "Closing..."
#     break
#   end
# end

# people.each do |person|
#   puts "This is #{person[:name]}, he is #{person[:age]} years old, and lives in #{person[:city]}." 
#   # loop created to print out every persons information
# end




# DIFFERENCES BETWEEN HASHES AND ARRAYS

# hashes
# ideal when need to associate values with keys
# eg. a persons general info (name, age, address)

# person ={
#   name: "Damen"
#   age: 19
#   city: "Yigo"
# }

# p person
# person [:name] = "Jess" # redeclares name
# person [:country] = "FSM" # add the key value pair of country FSM
# person [:phone number] = 911 # adding key value pair of phone nmuber = 911 
# person.delete(:city) # deletes the key value pair where the pair is city (change value to delete any value of choice) 
# p person 

# arrays
# some sort of ordered list
# eg. a list of peoples names but no general info

# numbers = [1, 2, 3]

# numbers[0]
# numbers[1]
# numbers[2]