require_relative "data_structures"
require_relative "todo"

# First, lets make sure we can add to a new TodoList and check the size.
begin
  todo_list = Todo.new
  raise unless Todo.size(todo_list) == 0

  todo_list = Todo.add(todo_list, "first thing todo")
  raise unless Todo.size(todo_list) == 1

  todo_list = Todo.add(todo_list, "second thing todo")
  raise unless Todo.size(todo_list) == 2
end

# Next, lets make sure we can add to a TodoList and verify using get_item.
begin
  todo_list = Todo.new
  raise unless Todo.get_item(todo_list, 0) == nil

  todo_list = Todo.add(todo_list, "first thing todo")
  raise unless Todo.get_item(todo_list, 0) == "first thing todo"

  todo_list = Todo.add(todo_list, "second thing todo")
  raise unless Todo.get_item(todo_list, 0) == "first thing todo"
  raise unless Todo.get_item(todo_list, 1) == "second thing todo"
end

# Next, lets make sure we can delete from TodoList
begin
  todo_list = Todo.new
  todo_list = Todo.add(todo_list, "first thing todo")
  todo_list = Todo.add(todo_list, "second thing todo")
  todo_list = Todo.add(todo_list, "third thing todo")
  raise unless Todo.get_item(todo_list, 0) == "first thing todo"
  raise unless Todo.get_item(todo_list, 1) == "second thing todo"
  raise unless Todo.get_item(todo_list, 2) == "third thing todo"

  todo_list = Todo.delete(todo_list, "second thing todo")
  raise unless Todo.get_item(todo_list, 0) == "first thing todo"
  raise unless Todo.get_item(todo_list, 1) == "third thing todo"
end

