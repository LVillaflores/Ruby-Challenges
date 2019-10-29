# --- Directions
# Write a function that returns the number of vowels
# used in a string.  Vowels are the characters 'a', 'e'
# 'i', 'o', and 'u'.
# --- Examples
#   Vowels.call('Hi There!') --> 3
#   Vowels.call('Why do you ask?') --> 4
#   Vowels.call('Why?') --> 0

class VowelsService
  def self.call(str)
    vowel = ["a", "e", "i", "o", "u"]
    count = 0
    sentence = str.downcase
    sentence.each_char do |ch|
      if vowel.any? {|v| ch.include? v}
        count +=1
      end
    end
    return "#{str}-> Vowel count: #{count}"
  end
end

p VowelsService.call('Hi I am Lorenzo.')