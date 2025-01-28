# representing a 3x3 grid
# grid = [
#  [1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]
# ]

# p grid [1][2]

# tic tac toe board

# board = [
# ['', '', ''],
# ['', '', ''],
# ['', '', '']
# ]

# # p board
# board[0][0] = 'X'
# board[1][1] = 'O'
# board[0][2] = 'X'
# board[0][1] = 'O'
# board[2][0] = 'X'
# board[2][1] = 'O'
# bpard[1][0] = 'X'
# p board

# grid = [
#  [1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]
# ]

# grid.each do |index|
#   puts index
# end

# grid.each do |a, b, c|
#   p a 
#   p b 
#   p c 
# end

# grid.each do |number|
#   number.each do |num|
#     p num
#   end
# end  

# Task: Create a hash representing a student with nested information.
# Instructions:
# Create a file named nested_data.rb.
# Include keys for :name, :grades (hash of subjects and scores), and :contact (hash with :email and :phone).
# Access and print specific nested values.

# student = {
#   name: "Jordan",
#   grades: {
#   math: "98",
#   art:  "98",
#   english: "80",
#   science: "50"
#   },
# contact: {
#   email: "email@email.email",
#   phone: "671-123-4567"
#   }
# }

# p student[:name] # prints student name
# p student[:grades] # prints all listed grades
# p student[:contact] # prints out contact information

# Task: Write a program that iterates over a hash of multiple students, each with their own nested hashes.
# Instructions:
# Define a hash where each key is a student's name, and the value is a hash of their grades.
# Iterate over each student to display their grades.

# students = {
#   kevin:{ math: 99, biology: 89},
#   joe:{ math: 90, biology: 89},
#   damen:{ math: 100, biology: 100}
# }

# p students

# students[:kevin]. each do |subject, grade|
#   # puts subject, grade
#   puts "#{subject.capitalize}: #{grade}"
# end

# person = {
# name: "Noah",
# age: 25,
# hobby: "golf",
# }

# p person
# p person[:name] = "Damen" redeclares name from noah > damen
# p person

# students = {
#   kevin:{ math: 99, biology: 89},
#   joe:{ math: 90, biology: 89},
#   damen:{ math: 100, biology: 100}
# }

# p students
#   students[:kevin][:biology] = 95 # redeclares kevins biology grade
#   students[:joe].delete(:math) # delete joes math grade
#   students[:damen][:engineering] = 110 # adds on engineering class and grade for damen
# p students

# an array of hashes representing products
# products = [
# {name: "Laptop", price: 1000, tags: ["electronics", "computers"]},
# {name: "book", price: 20, tags: ["education", "literature"]},
# {name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"]}
# ]


# p products[0][:tags][1] # accesses the tag "computers"

# Task: Create a program that manages a list of employees, where each employee has:
# A name (string)
# A position (string)
# A list of skills (array)
# Contact information (hash with :email and :phone)
# Instructions:
# Create a file named employee_directory.rb.
# Define an array of employee hashes.
# Iterate over the array to display each employee's information.









