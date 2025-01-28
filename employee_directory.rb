# Task: Create a program that manages a list of employees, where each employee has:
# A name (string)
# A position (string)
# A list of skills (array)
# Contact information (hash with :email and :phone)
# Instructions:
# Create a file named employee_directory.rb.
# Define an array of employee hashes.
# Iterate over the array to display each employee's information.

# products = [
# {name: "Laptop", price: 1000, tags: ["electronics", "computers"]},
# {name: "book", price: 20, tags: ["education", "literature"]},
# {name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"]}
# ]

employee = [
{name: "Charles", position: "Cook", skills: ["Fast Worker", "Team Oriented"], contact: {email: "charles@email.com", phone: 671} },
{name: "Damen", position: "Dishwasher", skills:["Great Communication", "Fast Worker"], contact: {email: "damen@email.com", phone: 671} }
]

# p employee

employee.each do |name|
  puts name[:name]
  puts name[:position]
  puts name[:skills]
  p name[:contact][:email]
  puts "Phone number is #{name[:contact][:phone]}"
  puts "--------------"
end

# Charles
# Cook
# Fast Worker
# Team Oriented
# "charles@email.com"
# Phone number is 671
# "--------------"        current results when running code
# Damen
# Dishwasher
# Great Communication
# Fast Worker
# "damen@email.com"
# Phone number is 671
# "--------------"