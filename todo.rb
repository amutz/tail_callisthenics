require_relative "data_structures"

module Todo
  def self.new
    List.empty
  end

  def self.add(todo_list, thing_todo)
    todo_list.add(thing_todo)
  end

  def self.delete(todo_list, thing_to_delete)
    if todo_list.head == nil
      todo_list
    else
      if todo_list.head == thing_to_delete
        delete(todo_list.tail, thing_to_delete)
      else
        delete(todo_list.tail, thing_to_delete).add(todo_list.head)
      end
    end
  end

  def self.delete2(from_todo_list, dest_todo_list, thing_to_delete)
    if from_todo_list.head == nil
      dest_todo_list
    else
      if from_todo_list.head == thing_to_delete
        delete2(from_todo_list.tail, dest_todo_list, thing_to_delete)
      else
        delete2(from_todo_list.tail, List.empty.add(from_todo_list.head).add(dest_todo_list.tail), thing_to_delete)
      end
    end
  end


  def self.size(todo_list)
    if todo_list.head == nil
      0
    else
      1 + size(todo_list.tail)
    end
  end

  def self.size2(todo_list, acc)
    if todo_list.head == nil
      acc
    else
      size2(todo_list.tail, 1 + acc)
    end
  end

  def self.get_item(todo_list, item_number)
    if todo_list == List.empty
      return nil
    elsif item_number == size(todo_list) - 1
      todo_list.head
    else
      get_item(todo_list.tail, item_number)
    end
  end
end



