## Fun with tail call optimization

What it is:
[Wikipedia Entry on Tail Calls](https://en.wikipedia.org/wiki/Tail_call)

With tail call optimization you can replace looping with recursion.

Rules for today:
 1. Functions can not have side effects
 2. Functions should return only one value
 3. No mutating state: use only basic data types and those provided in
   data_structures.rb
 4. No looping allowed.  Rely on recursion instead.

These excersizes:
 - Make the test files pass.
 - Run the test files that don't end in "tr" using normal ruby.
 - Run the test files that do end in tr using the file
   run_with_tail_call_optimization.rb.

The best order to attempt these:
 1. ruby test_fibonacci.rb
 2. ruby run_with_tail_call_optimization.rb test_fibonacci_tr.rb
 3. ruby test_todo.rb
 4. ruby run_with_tail_call_optimization.rb test_todo_tr.rb


