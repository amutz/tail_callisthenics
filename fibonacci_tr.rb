def fib(n, sum = 0)
  if n == 0
    sum
  else
    fib(n-1, sum+n)
  end
end

