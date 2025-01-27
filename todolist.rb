# Command-Line To-Do List Application
# Project Requirements:
# User Interface:
# Display a menu with options:
#  Add a task
#  View tasks
#  Mark task as completed
#  Delete a task
#  Exit
# Functionalities:
#  Add a Task:
#   Prompt the user to enter a task description.
#   Store the task in an array.
# View Tasks:
#  Display all tasks with their status (completed/not completed).
# Mark Task as Completed:
#  Allow the user to mark a specific task as completed.
# Delete a Task:
#   Allow the user to delete a specific task.
# Exit:
#  Terminate the application.

# Task: Write pseudocode to plan the application logic.
# Instructions:
#  Break down the project into smaller tasks.
#  Identify the methods you'll need.
#  Consider how you'll store and manage the task

# Task: Begin coding the to-do list application based on your pseudocode.
# Instructions:
# Create a file named todo_list.rb.
# Implement the menu using a loop.
# Define methods for each menu option.
# Use arrays to store tasks and their statuses.

# step by step breakdown:
# 1.greet user and display dropdown list of options ranging from add, view , mark as done, delete, and exit

# 2.add task: create an array called add_task and have listed as add_task = [] (empty array so that any task that is added (gets.chomp) gets pushed into the add_task array.)

list_task = []

def add_task(task_list) 
  puts " What would you like to add to your list?"
  item = gets.chomp
  task_list.push(item)
  return "Success! You added on to your list! #{task_list} "  # if using return, when calling function use p/puts. if using puts, do not use p/puts when calling function
end

def remove_task(task_list)
  puts "Select a task to remove:"
  item = gets.chomp
  if task_list.delete(item)
  return "You removed #{item} from your list."
  end
end

def complete_task(task_list)
  puts "Select task to mark as done!"
  item = gets.chomp
  if task_list.delete(item)
    return "Task: #{item} is completed!"
  end
end 

loop do
  puts "Your Super Special To-Do List!"
  puts "What would you like to do?
    1. Add a task :)
    2. View current tasks :D
    3. Mark task as done D:
    4. Delete a task :/
    5. Exit :("
  
  puts "Please input the listed numbers to be directed to that menu :)"
    choice = gets.chomp.to_i
      if choice == 1
       p add_task(list_task) # runs add task function
      end

      if choice == 2
        puts "Here is your list so far: "
         puts "#{list_task}."
      end

      if choice == 3
      p complete_task(list_task)
        # puts "Input task to mark as done!"
        #  done = gets.chomp
        #   if done >= 0
        #     puts "Task Completed!"
          # end
      end

      if choice == 4
         p remove_task(list_task) # runs remove_task function
      end

      if choice == 5
        puts "That's it! Goodbye!"
        break 
      end
  end 

  