# Exercise:
# Instructions:
# Create a new Ruby file named calculator.rb.
# Create a calculator class with an add method
# Manually test it to make sure everything is working
# In your terminal, run gem install rspec to install rspec
# Then run rspec --init to initialize rspec in that folder
# Create the rspec tests in a file called calculator_spec.rb in the spec folder to test the add method you just created
# Run the tests by typing in rspec in your terminal

# Rspec can run automated tests

class Calculator 
  def add(a, b)
    a + b
  end
end

# calc = Calculator.new
# puts calc.add(4, 3) #7