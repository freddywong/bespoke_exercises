number = 16
b = 2

def left_rotate(number, b)
  number << b | number >> (32 - b)
end

def right_rotate(number, b)
  number >> b | number << (32 - b) & 0xFFFFFFFF
end

puts left_rotate(number, b)
puts right_rotate(number, b)
