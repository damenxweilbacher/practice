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

class Course
  def initialize(course_name, course_code)
    @course_name = course_name
    @course_code = course_code
  end
  
  def display_info
    "Course Name: #{@course_name}, Course Code: #{@course_code}"
  end
end

