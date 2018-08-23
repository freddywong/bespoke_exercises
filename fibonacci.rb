@cache = {
  0 => 0,
  1 => 1,
  2 => 1
}

n = 100

def fibonacci(n)
  @cache[n] ||= fibonacci(n-1) + fibonacci(n-2)
end
puts "#{n}'s fibonacci value: #{fibonacci(n)}"
