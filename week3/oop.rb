# object oriented programming.

# style that uses objects to design software (attributes/methods & functions)
# helps mimic real world objects with code

# encapsulation
# bundle data and methods that operate within one class

# abstraction
# hide complex implementation/logic details and only show what is necessary

# class Car 
#   # methods and logic
# end 

# my_car = Car.new
# puts my_car.class # displays Car

# class Person
#   def set_name(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end    
# end


# person1 = Person.new
# person1.set_name("Damen")
# puts person1.get_name

# Task: Enhance your class by building an interactive program that allows users to create and interact with objects.
# Instructions:
# Update your class to include user interaction.
# Use gets.chomp to get input from the user.
# Provide a menu for the user to choose actions.
# Store multiple objects in an array or hash.

# class Book
#   attr_accessor :title, :author, :pages_read

#   def initialize(title, author)
#     @title = title
#     @pages_read = 0
#     @author = author
#   end

#   def read(pages)
#     @pages_read += pages
#     puts "You have read #{pages} pages of '#{title}'."
#   end
# end

# books = []

# loop do
#   puts "\nBook Manager"
#   puts "1. Add a new book"
#   puts "2. List all books"
#   puts "3. Read pages"
#   puts "4. Exit"
#   print "Enter your choice: "
#   choice = gets.chomp

#   case choice
#   when "1"
#     print "Enter the title of the book: "
#     title = gets.chomp
#     print "Enter the author of the book: "
#     author = gets.chomp
#     books << Book.new(title, author)
#     puts "Book added!"
#   when "2"
#     puts "\nBooks in your collection:"
#     books.each_with_index do |book, index|
#       puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
#     end
#   when "3"
#     if books.empty?
#       puts "No books available. Please add a book first."
#     else
#       puts "\nSelect a book to read:"
#       books.each_with_index do |book, index|
#         puts "#{index + 1}. #{book.title}"
#       end
#       print "Enter the number of the book: "
#       book_number = gets.chomp.to_i
#       if book_number.between?(1, books.length)
#         print "How many pages did you read? "
#         pages = gets.chomp.to_i
#         books[book_number - 1].read(pages)
#       else
#         puts "Invalid book number."
#       end
#     end
#   when "4"
#     puts "Goodbye!"
#     break
#   else
#     puts "Invalid choice. Please try again."
#   end
# end

class Car 
  attr_accessor :model, :manufacturer, :miles_driven

  def initialize(model, manufacturer)
    @model = model
    @manufacturer = manufacturer
    @miles_driven = 0
  end

  def odometer(miles)
    @miles_driven += miles
    puts "===================="
    puts "You have driven #{miles} miles with your #{manufacturer} #{model}."
  end
end

vehicles = []

loop do 
  puts "\nVehicle Tracker"
  puts "==================="
  puts "1. Add Vehicle."
  puts "2. View Vehicles."
  puts "3. Odometer Check"
  puts "4. Exit Tracker"
  puts "==================="
  puts "Enter a number to be brought to designated menu."
  menu = gets.chomp
  puts "==================="

      case menu
      when "1"
        print "Enter the model of the car: "
        model = gets.chomp
        print "Enter the manufacturer of the car: "
        manufacturer = gets.chomp
        vehicles << Car.new(model, manufacturer)
        puts "Vehicle added!"
      when "2"
        puts "\nCars in your garage:"
        puts "=================="
        vehicles.each_with_index do |vehicle, index|
          puts "#{index + 1}. #{vehicle.model} by #{vehicle.manufacturer} (Miles Driven: #{vehicle.miles_driven})"
        end
      when "3"
        if vehicles.empty?
          puts "No vehicles available. Please add a car first."
        else
          puts "\nSelect a car to track:"
          vehicles.each_with_index do |car, index|
             puts "#{index + 1}. #{car.model}"
          end
          print "Enter the number of the Car: "
          vehicle_number = gets.chomp.to_i
          if vehicle_number.between?(1, vehicles.length)
            print "How far have you driven with this car? "
            driven = gets.chomp.to_f
            if driven >= 5000
              puts "======ADVISE======"
              puts "Your car requires maintenance. Please contact your dealer."
            end
            vehicles[vehicle_number - 1].odometer(driven)
          else
            puts "Invalid car number."
          end
        end
      when "4"
        puts "Goodbye!"
        break
      else
        puts "Invalid choice. Please try again."
      end
    end