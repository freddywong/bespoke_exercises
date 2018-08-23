def balanced?(brackets)
  symbol_array = brackets.split("")
  return false if symbol_array.size.odd?
  openers = []
  until symbol_array.empty?
    if is_opener?(symbol_array.first)
      openers.unshift(symbol_array.shift)
    else
      return false unless correct_closer?(symbol_array.shift, openers.shift)
    end
  end
  true
end

def is_opener?(symbol)
  ["(", "{", "["].any? { |opener| opener == symbol }
end

def correct_closer?(closer_used, corresponding_opener)
  closer_needed =
    case corresponding_opener
    when "{" then "}"
    when "[" then "]"
    when "(" then ")"
    end
  closer_needed == closer_used
end

brackets = "[()]{}{[()()]()}"

puts balanced?(brackets)
