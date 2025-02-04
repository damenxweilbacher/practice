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

student = Student.new("damen", 19, "12", "JFK")
puts student.introduction

teacher = Teacher.new("noah", 20, "science", 25)
puts teacher.introduction



