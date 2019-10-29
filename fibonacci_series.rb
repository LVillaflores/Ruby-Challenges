# --- Directions
# Print out the n-th entry in the fibonacci series.
# The fibonacci series is an ordering of numbers where
# each number is the sum of the preceeding two.
# For example, the sequence
#  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# forms the first ten entries of the fibonacci series.
# Example:
#   Fib.call(0) # => [0]
#   Fib.call(3) # => [0, 1, 1, 2]
#   Fib.call(6) # => [0, 1, 1, 2, 3, 5, 8]

class Fib
  def self.call(n)
    i = 0
    sequence = [0, 1]
    while i < n do
      previous = sequence[i]
      succeding = sequence[i+1]
      sum = previous + succeding
      sequence << sum
      i +=1
    end
    print sequence[0..n]
  end
end

Fib.call(3)
puts