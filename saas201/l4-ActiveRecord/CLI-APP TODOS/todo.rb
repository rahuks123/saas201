require "active_record"
require "date"

class Todo < ActiveRecord::Base
  def self.overdue
    all.where("due_date < ?", Date.today)   #instead of checking each row we are checking all the row of the table
  end

  def self.due_today
    all.where("due_date = ?", Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end

  def due_today?
    due_date == Date.today
  end

  def to_displayable_string #displays the output in the required manner
    if due_today?
      display_date = ""
    else
      display_date = due_date
    end
    if completed == true
      display_status = "[X]"
    else
      display_status = "[ ]"
    end
    return "#{display_status} #{todo_text} #{display_date}"
  end

  def self.show_list #takes each row and calls the to_displayable_string function
    puts "\nMy Todolist"
    puts "\nOverdue"
    puts overdue.map { |todo| todo.to_displayable_string }
    puts "\nDue Today"
    puts due_today.map { |todo| todo.to_displayable_string }
    puts "\nDue Later"

    puts due_later.map { |todo| todo.to_displayable_string }
  end
  def self.add_task(task)
    create!(todo_text: task[:todo_text], due_date: Date.today + task[:due_in_days], completed: false)
    #puts"innserted"
  end
  def self.mark_as_complete!(id)
    todo = Todo.find(id)
    todo.completed = true
    todo.save
    todo
  end
end
