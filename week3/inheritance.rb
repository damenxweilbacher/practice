# Task: Create a Person superclass and Student and Teacher subclasses.
# Instructions:
# Create a new Ruby file named inheritance.rb.
# Define a Person class with attributes name and age, and a method introduce.
# Create Student and Teacher classes that inherit from Person.
# Add a grade attribute to Student and a subject attribute to Teacher.
# Instantiate objects from both subclasses and call their methods.

# Task: Modify the introduce method in Student and Teacher to include more details, ensuring the use of super.
# Instructions:
# In your Student class, add an attribute school and include it in the introduce method using super.
# In your Teacher class, add an attribute years_of_experience and include it in the introduce method using super.
# Test your code by creating new instances and calling introduce.

class Person
attr_accessor :name, :age
  def initialize (name , age)
    @name = name
    @age = age
  end
  
  def introduction
    "Hey, i'm #{@name} and i'm #{age} years old."
  end
end

class Student < Person
  attr_accessor :name, :age, :grade

  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end

  def introduction
    super + "I am in the #{@grade}th grade. I attend #{@school}."
  end
end


class Teacher < Person
  attr_accessor :name, :age, :subject
  
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end

  def introduction
    "#{super} I teach #{@subject}. I have been teaching for #{@years_of_experience} years."
  end
end

# student = Student.new("damen", 19, "12", "JFK")
# puts student.introduction

# teacher = Teacher.new("noah", 20, "science", 25)
# puts teacher.introduction


# Task: Plan a program that utilizes inheritance and polymorphism to model a real-world scenario.
# Instructions:
# Choose a scenario, such as a library system, zoo management, or school administration.
# Identify the classes needed, along with their attributes and methods.
# Determine the superclass and subclasses.
# Decide how polymorphism and method overriding will be used.
# Example Scenarios:
# Library System:
# Superclass: LibraryItem
# Subclasses: Book, Magazine, DVD
# Common Methods: checkout, return_item
# Polymorphism: Different checkout behaviors for each item type.
# Zoo Management:
# Superclass: Animal
# Subclasses: Mammal, Bird, Reptile
# Common Methods: feed, make_sound
# Polymorphism: Different make_sound implementations.

# class Animal #superclass
#   attr_accessor :name, :age, :species, :coat_type
#   def initialize(name, age, species, coat_type)
#     @name = name
#     @age = age
#     @species = species
#     @coat_type = coat_type
#   end
#   def feed
#     puts "#{@name} primary diet:"
#   end
#   def introduction
#     puts "Animal Info"
#     puts "1)Name: #{@name}"
#     puts "2)Age: #{@age}"
#     puts "3)Species: #{@species}"
#     puts "4)Coat Type: #{@coat_type}"
#   end
# end
# class Mammal < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :milk
#   def initialize(name, age, species, coat_type, milk)
#     super(name, age, species, coat_type)
#     @milk = milk
#   end
#   def introduction
#     super
#     puts "Did you know: #{@milk}"
#   end
#   def feed
#     super
#     puts "Variety Herbivore"
#   end
# end
# class Bird < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :feathers #used to avoid syntax erros
#   def initialize(name, age, species, coat_type, feathers)
#     super(name, age, species, coat_type)
#     @feathers = feathers
#   end
#   def introduction
#     super # adds all the animal info
#     puts "Did you know: #{@feathers}" # adds fun fact
#   end
#   def feed # function shows the animals primary diet for each animal type
#     super
#     puts "Variety Omnivore"
#   end
# end
# class Reptile < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :shed
#   def initialize(name, age, species, coat_type, shed)
#     super(name, age, species, coat_type)
#     @shed = shed
#   end
#   def introduction
#     super
#     puts "Did you know: #{@shed}"
#   end
#   def feed
#     super
#     puts "Carnivorous"
#   end
# end
# puts "---------------------------------------------------------------------------------------"
# mammal = Mammal.new("Kangaroo", 7, "Macropodidae", "Fur", "Mammals feed their young by producing milk.")
# puts mammal.class
# puts "\n"
# mammal.introduction
# mammal.feed
# puts "---------------------------------------------------------------------------------------"
# bird = Bird.new("Guam Rail", 2, "Gallirallus owstoni", "Feathers", "Birds are born with down feathers primarily to provide insulation and keep them warm.")
# puts bird.class
# puts "\n"
# bird.introduction
# bird.feed
# puts "---------------------------------------------------------------------------------------"
# reptile = Reptile.new("American Alligator", 10, "Alligator mississippiensis", "Scales", "Reptiles shed their skin, also called 'molting', primarily to accommodate their growing bodies as they age")
# puts reptile.class
# puts "\n"
# reptile.introduction
# reptile.feed
# puts "---------------------------------------------------------------------------------------"