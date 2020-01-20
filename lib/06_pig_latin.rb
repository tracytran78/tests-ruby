def translate(multi_words)
  words = multi_words.split
  latin_words = []
  words.each do |letters|
      if letters[0] =~ /[aeiou]/
          latin_words << letters + "ay"
      elsif letters[1] =~ /[aeiou]/
          if letters.slice(0,2) == "qu"
              latin_words << letters.delete_prefix(letters.slice(0,2)) + letters.slice(0,2) + "ay"
          else
              latin_words << letters.delete_prefix(letters.slice(0,1)) + letters.slice(0,1) + "ay"
          end
      elsif letters[2] =~ /[aeiou]/
          if letters.slice(1,2) == "qu"
              latin_words << letters.delete_prefix(letters.slice(0,3)) + letters.slice(0,3) + "ay"
          else
              latin_words << letters.delete_prefix(letters.slice(0,2)) + letters.slice(0,2) + "ay"
          end
      elsif letters[3] =~ /[aeiou]/
          latin_words << letters.delete_prefix(letters.slice(0,3)) + letters.slice(0,3) + "ay"
      end
  end
  return latin_words.join(' ')
end

