def echo (greet)
  return greet
end

def shout (hello)
  return hello.upcase
end

def repeat (a, p = 2)
  return [a].cycle(p).to_a.join(' ')
end

def start_of_word (word, p=0)
  return word.slice(0..p-1)
end

def first_word (new_word)
  return new_word.split.first
end

def titleize (title)
  lower_words = ["the", "and"] 
  return title.split.each_with_index.map{|x, index| lower_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end