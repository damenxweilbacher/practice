# abstraction
# hide any complex logic/implementation details
# also hide anything the user might not need

# class CoffeeMachine
#   def make_coffee(type)
#     boil_water
#     brew_coffee(type)
#     pour_in_cup
#     add_sugar_and_milk
#     puts "#{type.capitalize} is ready!"
#   end

#   private # anything under private cannot be accessed if tried to use outside of class. can only be used within the class.

#   def boil_water
#     puts "Boiling water..."
#   end

#   def brew_coffee(type)
#     puts "brewing #{type} coffee..."
#   end

#   def pour_in_cup
#     puts "pouring into the cup."
#   end

#   def add_sugar_and_milk
#     puts "Adding sugar and milk..."
#   end
# end

# machine = CoffeeMachine.new
# puts machine.make_coffee("espresso")

# Task: Practice creating private methods
# Instructions:
# Define a class of your choice
# Create one method that isn't private, that calls the private methods you will be creating.
# Use the 'private' method to make 2-3 private methods
# Instantiate an object of your class and test it

# class CookASteak
#   def make_steak(cut)
#     rest_steak
#     heat_pan
#     grill_steak(cut)
#     temp_check
#     return "#{cut.upcase} is ready to eat."
#   end

#   private

#   def rest_steak
#     puts "Steak is seasoned and resting."
#   end

#   def heat_pan
#     puts "Pan is hot enough and steak is ready to be thrown down."
#   end
  
#   def grill_steak(cut)
#     puts "Your #{cut.capitalize} is smelling good.... should be ready soon."
#   end  

#   def temp_check
#     puts "Temperature is 135 degrees. Perfect!"
#   end
# end

# cook = CookASteak.new

# cook.make_steak("tomahawk")

# encapsulation

# class BankAccount
# def initialize(owner, balance)
#   @owner = owner
#   @balance = balance
# end

# # Public method: anyone can call these
# def deposit(amount)
#   @balance += amount
# end

# def withdraw(amount)
#   if sufficient_funds?(amount)
#      @balance -= amount
#     else
#       puts "Insufficient funds!"
#     end
#   end

#  private

#  # Private method: only the class itself can call this
#   def sufficient_funds?(amount)
#    amount <= @balance
#   end
# end

# Task: Create a Library class that manages books.
# Instructions:
# Define a Library class with methods to add and remove books.
# Use private methods to handle internal operations like updating the database.
# The user should interact with simple methods like borrow_book and return_book.

# class Library
#   def initialize(book)
#     @book = book
#   end

#   def new_book
#     puts "You have now added #{@book}."
#     inventory
#   end

#   def remove_book
#     puts "You no longer have #{@book}"
#     borrowing
#   end

#   private 

#   def inventory
#     puts "#{@book} is still in the library."
#   end
  
#   def borrowing
#     puts "#{@book} is being borrowed by someone."
#   end

# end

# borrowed = Library.new("thomas")

# borrowed.new_book
# borrowed.remove_book

# composition
#   class Engine
#    def start
#       puts "Engine is starting"
#    end
#   end

#   class Wheels
#     def roll
#       puts "Wheels are rolling"
#     end
#   end

#   class Car 
#     def initialize
#       @engine = Engine.new
#       @wheels = Wheels.new
#     end
  
#     def drive
#       @engine.start
#       @wheels.roll
#       return "Car is moving."
#     end 
#   end

# car = Car.new
# puts car.drive

# Instructions
# Create a Battery class
# It could have a method like charge that prints "Battery is charging...".
# Create a Storage class
# It could have a method like read_data that prints "Reading data from storage...".
# Create a Laptop class
# It should instantiate its own Battery and Storage objects in the initialize method. This shows composition—the Laptop “owns” these parts.
# Provide methods like power_on and load_files:
# power_on should call the charge method on @battery and then print something like "Laptop powering on...".
# load_files should call the read_data method on @storage and then print something like "Files loaded into memory.".
# Test Your Laptop
# Create a new Laptop instance.
# Call power_on and load_files on it.
# Observe the output to confirm the classes are working correctly together.

#  class Battery
#     def charge
#       puts "Battery is fully charged and ready to go."
#     end
#  end

#   class Storage
#     def space
#       puts "Reading data from drive." 
#     end
#  end

#  class Laptop
#     def initialize
#       @battery = Battery.new
#       @storage = Storage.new
#     end

#     def power_on
#       @battery.charge
#       return "Laptop is powered on and ready to go."
#     end

#     def load_files
#       @storage.space
#       return "Data from drive is now loaded."
#     end

#     def power_cycle
#       @battery.charge
#       @storage.space
#       return "System Check Complete. Laptop ready to use."
#     end
#   end 

#   # battery = Battery.new
#   # p battery.charge

#   # storage = Storage.new
#   # p storage.space

#   laptop = Laptop.new
#   p laptop.power_cycle

#   p laptop.power_on

#   p laptop.load_files

# aggregation

# class Player
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def display
#     puts "Player: #{@name}"
#   end
# end

# class Team
#   def initialize(name)
#     @name = name
#     @players = []
#   end

#   def add_player(player)
#     @players << player
#     puts "#{player.name} has joined #{@name}."
#   end

#   def show_team
#     puts "Team: #{@name}"
#     @players.each { |player| player.display }
#   end
# end

# player1 = Player.new("Charles")
# player2 = Player.new("Damen")

# team = Team.new("ruby rockets")

# team.add_player(player1)
# team.add_player(player2)

# team.show_team

# Task: Create classes to model a Computer composed of CPU, Memory, and Storage.
# Instructions:
# Define classes CPU, Memory, and Storage with simple methods.
# Create a Computer class that composes these components.
# Implement a method start_computer that calls methods from the components.

class CPU
  def cpu_temp
    puts "CPU TEMPERATURE:"
    puts "Processor is currently at 55 degrees."
    puts "----"
  end
end  # works individually

class Memory
  def ram_data
    puts "MEMORY USAGE:"
    puts "RAM is currently at 25.5/32gb."
    puts "----"
  end   
end # works individually

class Storage
  def storage_scan
    puts "STORAGE REMAINING:"
    puts "There is 1TB of storage left on this computer."
    puts "----"
  end
end # works individually

class Computer 
  def initialize
    @cpu = CPU.new
    @memory = Memory.new
    @storage = Storage.new
  end

  def system_scan
    @cpu.cpu_temp
    @memory.ram_data
    @storage.storage_scan
    return "Device powered on and system scanned. Current statistics shown above."
  end
end

# cpu = CPU.new
# cpu.cpu_temp

# memory = Memory.new
# memory.ram_data

# storage = Storage.new
# storage.storage_scan

computer = Computer.new # combines all classes/their methods
p computer.system_scan