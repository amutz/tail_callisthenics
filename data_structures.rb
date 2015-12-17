require "hamster"

# List
List = Hamster::List
begin
  list = List[1, 2, 3]
  raise unless list.head == 1
  raise unless list.tail == [2, 3]

  new_list = list.add(0)
  raise unless new_list == [0, 1, 2, 3]
  raise unless list == [1, 2, 3]

  list = List.empty
  raise unless list.head == nil
end

