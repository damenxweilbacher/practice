# Exercise: Membership ID Checker
# Goal: Validate a user’s membership ID against a known list of valid IDs, using Ruby’s error-handling features.
# Scenario
# Imagine you have a small club or service with a few valid membership IDs. A user must enter a valid ID to proceed. If they fail multiple times, the program refuses access.
# Requirements:
# Create a file named membership_checker.rb.
# Define a custom exception class, e.g. InvalidMembershipError.
# Store valid IDs in an array (e.g., ["AB123", "CD456", "EF789"]).
# Prompt the user for their membership ID.
# Raise an InvalidMembershipError if the entered ID is not in the valid list.
# Rescue this error, retry up to 3 attempts, then exit if still invalid.
# Use ensure to print a final message (e.g., "ID check finished."), regardless of success or failure



class InvalidMembershipError < StandardError
end

def password_try  #does not get the Welcome to the program
  attempts = 0
  valid_ids= [valid: {671, 670, 691} ]
  begin
    attempts += 1
    puts "Please enter ID (Attempt #{attempts})"
    input = gets.chomp
    raise "Incorrect ID. Please Try again" if attempts < 3 && == valid:valid .include?(valid_ids)
    print "Welcome, access granted." # will print if no error occurs
  rescue => e
    puts e.message
    
    if attempts < 3
      retry
    else
      puts "Not a valid ID."
    end
  ensure
    puts "ID Check finished."
  end
end

password_try









