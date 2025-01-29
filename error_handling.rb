# syntax error
# puts "hello dameb"  # shows syntaxerror when a quote mark is missing

# students = {
#      kevin:{ math: 99, biology: 89},
#      joe:{ math: 90, biology: 89},  # shows missing variable which is ","
#      damen:{ math: 100, biology: 100}
#    }

# p students

# begin: starts a block of code that might raise an exception.
# rescue: catches specific exceptions and allows you to handle them.
# ensure: code that runs whether an exception occured or not.



# def divide_numbers(a, b)
#   begin
#     result = a / b
#   rescue ZeroDivisionError
#     puts "Error: Cannot divide by zero."
#     result = nil
#   rescue TypeError
#     puts "Error: must be integers."
#     result = nil
#   ensure
#     puts "Division attempt completed"
#   end
#   return result
# end

# puts divide_numbers(10, 0) # outputs error message and nil
# puts divide_numbers(10, 2) # outputs quotient: 5

# Task: Create a safe division method.
# Instructions:
# Create a file named error_handling.rb.
# Write a method that takes two numbers and divides them.
# Use begin and rescue to handle ZeroDivisionError.
# Use ensure to print a message indicating the operation is complete.

# def divide_numbers(x, y)
#  begin
#   result = x / y
#  rescue ZeroDivisionError
#   puts "Error: cannot use zero in division."
#   result = nil
#  rescue TypeError
#   puts "Something went wrong... You used a non integer..."
#   result = nil
#  ensure
#   puts "Completed!"
#  end
#  return result
# end  

# puts "Division :D"
# puts "Enter Dividend"
# n1 = gets.chomp.to_i
# puts "Enter Divisor"
# n2 = gets.chomp.to_i

# p divide_numbers(n1, n2)

# creating custom exceptions.

# class NegativeNumberError < StandardError
# end

# def square_root(number)
#   raise NegativeNumberError, "Cannot take square root of a negative number." if number < 0 
#   Math.sqrt(number) # automatically returns
# end

# begin
#   puts square_root(9) # outputs 3.0
#   puts square_root(-4) # raises negativenumber error
# rescue NegativeNumberError => e
#   puts "Error: Negative Number Error."
# end

# Task: Create a custom exception for invalid input.
# Instructions:
# Define a custom exception class InvalidInputError.
# Write a method that raises this exception when the input is invalid.
# Use rescue to handle the custom exception.

# class InvalidInputError < StandardError
# end

# def divi(x, y)
#   raise InvalidInputError, "Invalid Input: No using 0." if x == 0
#   result = x / y 
# end

# begin
#   p divi(10,5)
#   p divi(200,5)
#   p divi(0,999)
# rescue InvalidInputError => e # e is message being raised when condition >> true
#   puts e.message # inputs e 
# ensure
#   puts "______"
# end

# attempts = 0

# begin
#   attempts += 1
#   puts "attempt #{attempts}"
#   raise "An error occurred" if attempts < 3
# rescue => e
#   puts e.message
#   retry if attempts < 3
# ensure
#   puts "Operation Complete"
# end

# Task: Implement retry in user input validation.
# Instructions:
# Modify your the following code to use retry to prompt the user again after an invalid input.
# Ensure that the program only retries a limited number of times to avoid infinite loops.

# def get_number
#   print "Please enter a number: "
#   input = gets.chomp
#   raise "That's not a valid number." unless input =~ /^\d+$/
#   input.to_i
# rescue => e
#   puts e.message
#   retry if 
# end

# number = get_number
# puts "You entered: #{number}"
# attempts = 0

# def guess_number
#   wrong_answers = []
#   attempts = 0

#   begin
#   attempts += 1
#   puts "Guess the number (Attempt #{attempts})"
#   guess = gets.chomp.to_i
#   raise "An error occurred." if attempts > 3
#   wrong_answers << (:guess, guess)


#   rescue => e
#     puts e.message
#     if attempts < 3
#     retry
#       puts "Try Again"
#     elsif guess = 25
#       puts "Correct!"
#     ensure
#       puts "completed."
#     end
# end

# p guess_number

















