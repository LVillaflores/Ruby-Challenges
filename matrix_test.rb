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

    result << matrix.shift
    p matrix
    p result

    row = 0
    col = 0
    while row <= dimensions
      while col < row
        minimmum = matrix[row].min
        maximmum = matrix[row].max
        matrix[row][0] = maximmum
        matrix[row][-1] = minimmum
        col+=1
      end
      row+=1
      result << matrix[row]
    end


    result.each do |row|
      p row
    end
  end
end

MatrixService.call(3)