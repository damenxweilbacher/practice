# Task: Save an array of hashes to a file in JSON format.
# Instructions:
# Create a Ruby script named save_contacts.rb.
# Define an array of hashes representing contacts.
# Write the array to a file named contacts.json in JSON format.
# Ensure proper error handling.

# data = {
#   name: "Alice",
#   age: 30,
#   hobbies: ["reading", "hiking", "coding"]
# }

# begin
#   file = File.open("data.json", "w")
#   file.write(JSON.pretty_generate(data))
#   puts "Data saved to data.json."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end

require 'json'

data = [
{name: "damen", number: 921, nickname: "d"},
{name: "lebron", number: 23, nickname: "da goat"},
{name: "joe", number: 0, nickname: "joe"}
]

begin
    file = File.open("contacts.json", "w") # appended "ooorah" to contacts.json along with pretty generate using "a+" :D 
    file.write(JSON.pretty_generate("data")) 
    # in parentheses could be the array (data), if appending could put string that will be appended
    puts "Data saved to contacts.json."
  rescue IOError => e
    puts "An error occurred: #{e.message}"
  ensure
    file.close if file
  end

  # use rewind to make sure it reads from beginning of file.