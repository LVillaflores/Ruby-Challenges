# --- Directions
#
#   Write a function that accepts an integer N
#   and returns a NxN spiral matrix.
#
# --- Examples
#
#   matrix(2) => [[1, 2],
#                 [4, 3]]
#   matrix(3) => [[1, 2, 3],
#                 [8, 9, 4],
#                 [7, 6, 5]]
#   matrix(4) => [[1,   2,  3, 4],
#                 [12, 13, 14, 5],
#                 [11, 16, 15, 6],
#                 [10,  9,  8, 7]]
#
# --- Run File
#
#   ruby ./matrix_service.rb
# Last Item per row = min val at row 2
require 'matrix'

class MatrixService
  def self.call(dimensions)
    i = 0
    result = []
    final_value = dimensions*dimensions
    values = (1..final_value).to_a
    matrix = Matrix.build(dimensions){
      unless i == final_value
        values.values_at(i)
        i+=1
      end}.to_a
    matrix.each do |row|
      p row
    end
    puts '--------------------'
    
    col = 0
    while col < dimensions
      row = 0
      while row < dimensions
        mat = matrix[col][row]
        result << mat
        row+=1
      end
      col+=1
    end
    p result
    if result.count.odd?
      temp = result[result.last/2]
      result[result.last/2] = result.last
      result[-1] = temp
    end
    # while col < dimensions
    #   while row < dimensions
    #     minimmum = matrix[row].min
    #     maximmum = matrix[row].max
    #     # if matrix[row][col] != minimmum || matrix[row][col] != maximmum
    #     #   result.push(matrix[row][col])
    #     # end
    #     matrix[row][0] = maximmum
    #     matrix[row][-1] = minimmum
    #     result << matrix[row].shift
    #     row+=1
    #   end
    #   col+=1
    # end
    result.each_slice(dimensions) {|a| p a}
  end
end

MatrixService.call(3)