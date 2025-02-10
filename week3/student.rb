# Homework Assignment
# Technical Assignment:
# Create a Student Management System in Ruby. You’ll define a Student class and a Course class, then allow students to enroll in courses and display their information. Below are the steps for completing the core project—and bonus tasks for going above and beyond.
# Part 1: Core Requirements
# Student Class (student.rb)
# Instance Variables:
# @name
# @student_id
# @courses (array to hold enrolled courses)
# Methods:
# initialize(name, student_id): set up name, student_id, and initialize @courses as an empty array.
# display_info: return a string like "Student Name: X, ID: Y".
# enroll(course): add the given Course object to @courses and return "Enrolled in #{course.course_name}".
# list_courses: if @courses is empty, return "No courses enrolled."; otherwise, list all course names.
# Course Class (course.rb)
# Instance Variables:
# @course_name
# @course_code
# Methods:
# initialize(course_name, course_code): store course details.
# display_info: return "Course Name: X, Code: Y".
# Connecting Them
# At the top of student.rb, add require_relative 'course' so Student can reference the Course class.
# Test your code by creating a Student, creating multiple Course objects, enrolling the student, and printing list_courses.
# Part 2: Bonus Features (Optional)
# Allowing Students to Unenroll
# Add a method (e.g., unenroll(course)) that removes a Course from @courses if present.
# Validations
# Prevent enrolling in the same course twice.
# Possibly ensure student_id or course_code is unique or not empty.
# Enhancing the Course Class
# Track which students are enrolled in each course (e.g., @enrolled_students array).
# Show a method like list_students to see who’s in the course.
# Write RSpec Tests
# Create spec/student_spec.rb and spec/course_spec.rb (or use one test file).
# Ensure each class/method is tested (initialization, enrolling, listing, etc.).
# Push Your Code to GitHub
# Keep your student.rb, course.rb, and RSpec test files in a repository.
# Document usage in a README.md if you wish.
# Submission Guidelines
# Push your code up to GitHub and share the link in the homework channel
# Due: By the next class session.
# Minimum Requirement: Core functionality of Student and Course (creation, enrollment, listing).
# Optional Bonus: Implement any or all of the advanced features for extra practice.
require_relative 'course'
class Student

  def initialize(name, student_id)
    @name = name
    @student_id = student_id
    @courses = []
  end

  def display_info
    "Student: #{@name} Student ID: #{@student_id}"
  end

  def enroll(course)
    if courses.include?(course)
      return "Enrolled in #{course.course_name} already."
    else
      @courses << course
      course.add_student(self)
      return "Enrolled in #{course.course_name}."
    end
  end
  
  def list_courses
    if @courses.empty?
      return "No courses available"
    else 
      @courses.each_with_index do |course , index|
        return "#{@name} is now enrolled in: #{index + 1}. #{course.course_name}"
      end 
    end
  end  
end

student = Student.new("damen w", 201202783)
course = Course.new("Computer Science", 201202743)

puts student.display_info
puts course.display_info