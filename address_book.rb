# Exercise:
# Create a simple command-line address book application.
# Instructions:
# Create a file named address_book.rb.
# Program Requirements:
# The program should display a menu with options:
# Add a contact
# View all contacts
# Search for a contact
# Exit
# Add a Contact:
# Prompt the user for the contact's name, phone number, and email.
# Store each contact as a hash within an array.
# View All Contacts:
# Display all contacts with their details.
# Search for a Contact:
# Prompt for the name to search.
# Display the contact's information if found.

#STEP 1 Program Requirements:
  # The program should display a menu with options:
  # Add a contact
  # View all contacts
  # Search for a contact
  # Exit

loop do
  puts "Your Address Book!"
  puts "------------------"
  puts "
  1. Add a Contact
  2. View Saved Contacts
  3. Search
  4. Exit" 
  puts "------------------"


  puts "Type a number to be directed to designated menu:"
  choice = gets.chomp.to_i

  if choice == 1 # add contact menu
    puts "Add Contact:"
    puts "Enter Contact Name"
    name = gets.chomp
    puts "Enter Contact Number"
    number = gets.chomp.to_i
    contact_info = {name: name, number: number}
     puts "Contact Saved as #{contact_info}."

  elsif choice == 2
    puts "Here are your saved contacts"
     p contact_info
  end
  
end
