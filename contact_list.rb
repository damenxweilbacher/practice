contacts = []

loop do
  puts "\nContact List Menu:"
  puts "1. Add contact"
  puts "2. Remove contact"
  puts "3. View contacts"
  puts "4. Exit"
  puts "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter contact name: "
    name = gets.chomp
    puts "Enter contact phone number: "
    phone = gets.chomp
    puts "Enter contact email: "
    email = gets.chomp
    contacts.push({ name: name, phone: phone, email: email })
    puts "Contact added."
  when 2
    puts "Enter contact name to remove: "
    name = gets.chomp
    contact = contacts.find { |c| c[:name] == name }
    if contact
      contacts.delete(contact)
      puts "Contact removed."
    else
      puts "Contact not found."
    end
  when 3
    puts "Contact List:"
    contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact[:name]} - #{contact[:phone]} - #{contact[:email]}"
    end
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end









