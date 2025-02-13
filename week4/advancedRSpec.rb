# class Student
#   attr_accessor :name, :grades

#   def initialize(name)
#     @name = name
#     @grades = []
#   end

#   def average_grade
#     return 0 if grades.empty?
#     total = grades.reduce(:+) # sum up all items in the array
#     return total / grades.size # going to get the length of the array
#   end
# end

# Task: Write tests for a Library class using mocks and stubs.
# Instructions:
# Create a Library class with a method fetch_books_from_api that simulates fetching book data from an external API.
# Use stubbing to simulate the API response in your tests.

# class Library
#   # attr_accessor: :book, :inventory
#   def initialize(book)
#     @book = book
#     @inventory = []
#   end

#   def fetch_books_from_api(bbook)
#     if @inventory.include?(bbook)
#       @inventory.delete(bbook)
#       return "Book retrieved."
#     else
#       return "Book not found."
#     end
#   end
# end