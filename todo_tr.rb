require_relative "data_structures"

module Todo
  def self.new
    List.empty
  end

  def self.add(todo_list, thing_todo)
    todo_list.add(thing_todo)
  end

  def self.delete(todo_list, temp_stack = List.empty, result = List.empty, thing_to_delete)
    if todo_list.head == nil
      if temp_stack.head == nil
        return result
      else
        result = result.add(temp_stack.head)
        temp_stack = temp_stack.tail
      end
    else
      if todo_list.head != thing_to_delete
        temp_stack = temp_stack.add(todo_list.head)
      end
      todo_list = todo_list.tail
      result = List.empty
    end
    delete(todo_list, temp_stack, result, thing_to_delete)
  end

  def self.size(todo_list, acc = 0)
    if todo_list.head == nil
      acc
    else
      size(todo_list.tail, 1 + acc)
    end
  end

  def self.get_item(todo_list, length = size(todo_list), item_number)
    if todo_list.head == nil
      return nil
    elsif item_number == length - 1
      todo_list.head
    else
      get_item(todo_list.tail, length - 1, item_number)
    end
  end
end

