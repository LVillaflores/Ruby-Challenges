# --- Directions
#
#   Check to see if two provided strings are anagrams of eachother.
#   One string is an anagram of another if it uses the same characters
#   in the same quantity. Only consider characters, not spaces
#   or punctuation.  Consider capital letters to be the same as lower case
#
# --- Examples
#
#   AnagramService.call('rail safety', 'fairy tales') --> True
#   AnagramService.call('RAIL! SAFETY!', 'fairy tales') --> True
#   AnagramService.call('Hi there', 'Bye there') --> False
#
# --- Run File
#
#   ruby ./anagram_service.rb

class AnagramService
  def self.call(strA, strB)
    sentence_1 = strA.downcase.gsub!(/\W+/, '').chars.sort
    sentence_2 = strB.downcase.gsub!(/\W+/, '').chars.sort
    if sentence_1.eql?sentence_2
      return "('#{strA}', '#{strB}') --> True"
    else
      return "('#{strA}', '#{strB}') --> False"
    end
  end
end

p AnagramService.call("A decimal point", "I'm a dot in place")