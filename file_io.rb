# Task: Write user input to a file.
# Instructions:
# Create a Ruby script named file_io.rb.
# Prompt the user for their name and a message.
# Write this information to a file named user_messages.txt.
# Ensure proper error handling and closing of the file.

# file i/o # i = input and o = output
# r = read 
# w = write (can overwrite past text so be mindful when using write) 
# w = (can also create new files if entering a different name that does not exist)
# a = append
# file.open = use exact text when opening files or else will not find file to pull from.
# rescue Errno::ENONENT = handles errors if file does not exist
# ensure = makes sure file is closed after operation.

# begin
#   file = File.open("example.txt", "w")
#   puts "Name:"
#   file.puts "Name:"
#   file.puts name = gets.chomp
#   puts "Message to send:"
#   file.puts "Message to send:"
#   file.puts message = gets.chomp
# rescue IOError => each
#   puts "We ran into an error :/ #{e.message}"
# ensure
#   file.close if file
# end

# 'a' Appends to the bottom of a file.
# does not overwrite anything. only adds on to bottom of file.

# begin
#   file = File.open("example.txt", "a")
#   puts "Name:"
#   file.puts "Name:"
#   file.puts name = gets.chomp
#   puts "Message to send:"
#   file.puts "Message to send:"
#   file.puts message = gets.chomp
# rescue IOError => each
#   puts "We ran into an error :/ #{e.message}"
# ensure
#   file.close if file
# end

# file.each_line do can read each individual line from the file. is like an each loop.

# Task: Count the number of lines in a file.
# Instructions:
# Create a file named data.txt with several lines of text.
# Read the file and count the number of lines.
# Display the total line count.
# Include error handling for file not found.

# lines = 0

# begin
#   file = File.open("data.txt", "r")
#   file.each_line do |line|
#     puts "Read line: #{line.chomp}"
#     lines += 1
#     puts "line #{lines} ^"
#   end
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end  # works successfully

# # example of reading and writing
# begin
#   # Open an existing file for reading and writing-
#   # The file pointer starts at the beginning of the file.
#   file = File-open ("example.txt", "r+")
#   puts "Original file content:"
#   # Read the file's entire content (the pointer moves to the end).
#   puts file.read
#   # Move the file pointer back to the start, so we can overvrite.
#   file.rewind
#   # Overwrite content with new text.
#   file-puts "This is new content overvriting the old!"
 
#   puts "File content has been overwritten."
# rescue Erro: ENDENT
#   puts "File not found." 
# ensure
#   file.close if file 
# end
  
# "a+" = append + read
# if file doesn't exist it will create one

# require 'json'

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

#JSON.pretty_generate can print out data in a nicer way 

# Task: Save an array of hashes to a file in JSON format.
# Instructions:
# Create a Ruby script named save_contacts.rb.
# Define an array of hashes representing contacts.
# Write the array to a file named contacts.json in JSON format.
# Ensure proper error handling.

# always put require 'json' or else will not be recognized.....

require 'json'

begin
  file = File.open("contacts.json", "r")
  data = JSON.parse(file.read)
  puts "Contacts loaded:"
  data.each do |contact| # loops through all contacts that are listed
    puts "Name: #{contact['name']}, Phone: #{contact['phone']}, Email: #{contact['nickname']}"
  end
rescue Errno::ENOENT
  puts "File not found." # will print out if there is no file under ".json" name.
rescue JSON::ParserError
  puts "Error parsing JSON data."
ensure
  file.close if file
end






