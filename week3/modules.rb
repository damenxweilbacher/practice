# Task
# Create a mixin (module) that you can include in multiple classes to share a common method.
# Instructions
# Define a module called Driveable.
# Inside Driveable, define a method drive that returns or prints a message like "Driving the <class name>!".
# Create two classes, Car and Motorcycle, in the same file.
# In each class, include the Driveable module.
# Instantiate objects from both Car and Motorcycle and call the drive method on each.
# Print or return the result so you can see that both classes share the same functionality.

# module Loggable
#   def log(intro)
#     puts "Log: #{Time.now} - #{intro}" # time.now prints current time when code was ran or logged.
#   end
# end

# class Person
#   include Loggable 
#   # includes the loggable module so we can access the (intro) and prints out the message in that function using the 'include.'

#   def initialize(name) # parameter that has been set
#     @name = name
#     log("New Person created with name - #{@name}")
#   end
# end

# person = Person.new("damen")

# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF."
#     end
#   end
# end

# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network."
#     end
#   end
# end

# # there are 2 printer classes, but these 2 are not the same. they exist in different modules so the 2 classes have no idea that the other exists.

# pdf_printer = PDFTools::Printer.new
# network_printer = NetworkTools::Printer.new # enter module name followed by '::' then enter class name to access class inside a module.

# pdf_printer.print_file("damenpdf.txt")
# network_printer.print_file("documentdamen.txt")

# Task
# Create a mixin (module) that you can include in multiple classes to share a common method.
# Instructions
# Define a module called Driveable.
# Inside Driveable, define a method drive that returns or prints a message like "Driving the <class name>!".
# Create two classes, Car and Motorcycle, in the same file.
# In each class, include the Driveable module.
# Instantiate objects from both Car and Motorcycle and call the drive method on each.
# Print or return the result so you can see that both classes share the same functionality.

# module Driveable
#   def drive(car)
#     puts "I AM DRIVING IN THE  #{car}!"
#     # prints out drive function with the (string)
#   end
# end  

# class Car
#  include Driveable
# end

# class Motorcycle
#   include Driveable
# end

# car = Car.new
# motorcycle = Motorcycle.new

# car.drive("supe") #use .drive for that is the function we are using then in parentheses add the vehicle we drive.
# motorcycle.drive("bike")

# module Walkable
# def walk(message)
#   puts "On a walk with #{message}"
# end
# end

# class Person
# include Walkable

# #   def initialize(name)
# #     @name = name
# #     walk("#{@name}")
# #   end
# end

# class Dog
# include Walkable

# # def initialize(name)
# #   @name = name
# #   walk("#{@name}")
# # end
# end

# person = Person.new
# person.walk("Snoop Dog")
# dog = Dog.new
# dog.walk("Dog")



# Task: Create a module with multiple methods and include it in a class.
# Instructions:
# Define a module MathOperations with methods add, subtract, multiply, divide.
# Create a class Calculator.
# Include MathOperations in Calculator.
# Instantiate Calculator and perform calculations.

# module MathOperations
#   def add(a, b)
#     puts "Sum is #{a + b}"
#   end
  
#   def subtract(a, b)
#     puts "Difference is #{a - b}"
#   end 
  
#   def multiply(a, b)
#     puts "Product is #{a * b}"
#   end
  
#   def divide(a, b)
#     puts "Quotient is #{a / b}"
#   end  
# end

# class Calculator
#   include MathOperations
# end

# calculator = Calculator.new

# calculator.add(25, 25)

# calculator.subtract(100, 75)

# calculator.multiply(2, 4)

# calculator.divide(4, 2)

# Instructions:
# Create another method for the Introduction module
# Test that method in the Person, Student, or Teacher classes
# Write an RSpec test in introduction_spec.rb for it

module Introduction
  def introduce
    "Hello, my name is #{@name}"
  end

  def schools
    " I go to #{@school}"
  end 
end

class Person
  include Introduction
  attr_accessor :name, :age

  def initialize(name, age)
    raise ArgumentError, 'Age must be a positive number' if age < 0
    @name = name
    @age = age
  end
end

class Student < Person
  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end
end

class Teacher < Person
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end
end

student = Student.new("Leon", 25, "12", "FD")
puts student.introduce

teacher = Teacher.new("Charles", 26, "Computer Science", 50)
puts teacher.introduce