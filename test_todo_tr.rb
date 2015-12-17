require_relative "data_structures"
require_relative "todo_tr"

# First, lets make sure we can add to a new TodoList and check the size.
begin
  todo_list = Todo.new
  raise unless Todo.size(todo_list) == 0

  50000.times do
    todo_list = Todo.add(todo_list, "I have many todos")
  end
  raise unless Todo.size(todo_list) == 50000
end

# Next, lets make sure we can add to a TodoList and verify using get_item.
begin
  todo_list = Todo.new
  raise unless Todo.get_item(todo_list, 0) == nil

  50000.times do
    todo_list = Todo.add(todo_list, "I have many todos")
  end

  todo_list = Todo.add(todo_list, "my last thing todo")
  raise unless Todo.get_item(todo_list, 49999) == "I have many todos"
  raise unless Todo.get_item(todo_list, 50000) == "my last thing todo"
end

# Next, lets make sure we can delete from TodoList
begin
  todo_list = Todo.new
  25000.times do
    todo_list = Todo.add(todo_list, "I have many todos")
  end
  todo_list = Todo.add(todo_list, "I may not do this one")
  25000.times do
    todo_list = Todo.add(todo_list, "I have many more todos")
  end
  raise unless Todo.get_item(todo_list, 24999) == "I have many todos"
  raise unless Todo.get_item(todo_list, 25000) == "I may not do this one"
  raise unless Todo.get_item(todo_list, 25001) == "I have many more todos"

  todo_list = Todo.delete(todo_list, "I may not do this one")
  raise unless Todo.get_item(todo_list, 24999) == "I have many todos"
  raise unless Todo.get_item(todo_list, 25000) == "I have many more todos"

end

