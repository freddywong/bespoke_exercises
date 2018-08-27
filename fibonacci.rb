def fibonacci(n)
  pos_1 = 0
  pos_2 = 1
  current_val = 0
  pointer = 2

  while pointer <= n
    current_val = pos_1 + pos_2
    pos_1 = pos_2
    pos_2 = current_val
    pointer += 1
  end
  puts current_val
end

fibonacci(100)
