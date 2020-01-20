def who_is_bigger (a,b,c)
  array = [a,b,c]
  if array.any?{ |i| i.nil? }
    return "nil detected"
  elsif array.index(array.max) == 0
    return "a is bigger" 
  elsif array.index(array.max) == 1
    return "b is bigger" 
  elsif array.index(array.max) == 2
    return "c is bigger" 
  end
end 

def reverse_upcase_noLTA (sentence)
  return sentence.reverse.upcase.delete('LTA')
end

def array_42 (array)
  return array.any?(42)
end

def magic_array (magic_array)
  return magic_array.flatten.sort.map { |i| i*2 }.delete_if { |i| i%3 == 0 }.uniq
end
