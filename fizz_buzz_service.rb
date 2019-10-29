# FizzBuzz Challenge
# ---
#
#   Write a program that prints the numbers from 1 to 100.
#   But for multiples of three print "Fizz" instead of the number
#   and for the multiples of five print "Buzz".
#   For numbers which are multiples of both three and five print "FizzBuzz".
#   Results with numbers must be positive.
#
# E.g.
# ---
#
#   FizzBuzzService.call(-4) # => [1, 2 'Fizz', 4]
#   FizzBuzzService.call(6) # => [1, 2, 'Fizz', 4, 'Buzz', 'Fizz']
#   FizzBuzzService.call(15) # => [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz']
#
#
# To execute file, run this command:
# ---
#
#   ruby ./fizz_buzz_service.rb


class FizzBuzzService
  def self.call(n)
    count = (1..n).to_a
    return count.map do |value|
      if value%3==0 && value%5==0
        value = "FizzBuzz"
      elsif value%5==0
        value = "Buzz"
      elsif value%3==0
        value = "Fizz"
      else
        value = value
      end
    end
  end
end

p FizzBuzzService.call(15)