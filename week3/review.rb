# Task: Create a Book class with instance variables and methods.
# Instructions:
# Define a Book class with an initialize method.
# Set up instance variables @title, @author, and @pages.
# Define a method book_info that returns a string with the book's details.
# Instantiate a Book object and call book_info.

class Book
  attr_accessor :title, :author, :pages # used to test for any errors.
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages

  end

  # def genre
  #   "Your book falls under the #{@genre} genre."
  # end
  
  def details # using details instead bc it gets confusing using book twice...
    "This is #{@title} by #{@author}. It has #{@pages} pages."
  end
end
puts "hello"
#  book = Book.new("book title", "book author", 25, "book genre")

# puts book.details
# puts book.genre

# Task: Add one more method to your book class and write RSpec tests for it
# Instructions:
# Add one more method of your choice to your book class.
# Test it to make sure it works
# Write RSpec tests for all methods you have in your book class (should be at least 3 in total)

# require_relative '../review'

# RSpec.describe Rectangle do
#   let(:shape) { Rectangle.new(5, 10) }

#   describe '#initalize' do
#     it 'initialize with the given length and width' do
#       expect(shape.length).to eq(5)
#       expect(shape.width).to eq(10)
#     end
#   end
  
#   describe '#area' do
#   it 'multiplies the length and width' do
#       expect(shape.area).to be >= 50 # 50
#     end
#   end

#   describe '#perimiter' do
#     it 'adds the length and width and then multiplies by 2' do
#       expect(shape.perimiter).to eq(30)
#     end
#   end
# end

# Advanced Matchers
# be > / be <
# expect(10).to be > 5

# include
# expect([1, 2, 3]).to include(2)
# expect("hello world").to include("hello")

# match / match_array
# expect("abcdef").to match(/[a-z]+/)
# expect([1,2]).to match_array([2,1])  # order-insensitive

# change
# expect { account.deposit(100) }.to change { account.balance }.by(100)








