# Brute Force on 3x3 matrix

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
    result << matrix[0..dimensions].shift

    row = 1
    col = 0
    while row < dimensions
      while col < row
        minimmum = matrix[row].min
        maximmum = matrix[row].max
        matrix[row][0] = maximmum
        matrix[row][-1] = minimmum
        col+=1
      end
      row+=1
      result << matrix[row-1]
    end
    previous_min = result[1].min
    current_min = result[-1].min

    result[1][result[1].rindex(previous_min)] = current_min
    result[-1][result[-1].rindex(current_min)] = previous_min 
    result[1], result[-1] = result[-1],result[1]
    result[1][0] ,result[1][1] = result[1][1], result[1][0]
    result[-1] = result[-1].sort.reverse
    
    result.each do |row|
      p row
    end
  end
end

MatrixService.call(3)