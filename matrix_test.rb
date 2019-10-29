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
    if dimensions >= 5
      p "Ayoko na Wag na po"
    else
      result << matrix.shift

      row = 0
      col = 0
      while row < dimensions-1
        minimmum = matrix[row].min
        maximmum = matrix[row].max
        matrix[row][0] = maximmum
        matrix[row][-1] = minimmum

        result << matrix[row]
        row+=1
      end

      if dimensions == 3
        previous_min = result[1].min
        current_min = result[-1].min

        result[1][result[1].rindex(previous_min)] = current_min
        result[-1][result[-1].rindex(current_min)] = previous_min 
        result[1], result[-1] = result[-1],result[1]
        result[1][0] ,result[1][1] = result[1][1], result[1][0]
        result[-1] = result[-1].sort.reverse
      end

      if dimensions == 4
        previous_min = result[1].min
        current_min = result[-1].min
        result[1][result[1].rindex(previous_min)] = current_min
        result[-1][result[-1].rindex(current_min)] = previous_min

        result[1], result[-1] = result[-1],result[1]

        previous_min = result[2].min
        current_min = result[-1].min
        result[2][result[2].rindex(previous_min)] = current_min
        result[-1][result[-1].rindex(current_min)] = previous_min

        previous_max = result[1].max
        current_max = result[2].max
        result[1][result[1].rindex(previous_max)] = current_max
        result[2][result[2].rindex(current_max)] = previous_max

        result[2][1] ,result[-1][-1] = result[-1][-1], result[2][1]
        result[-1] = result[-1].sort.reverse

        result[2][0] ,result[2][2] = result[2][2], result[2][0]
        result[1][2] ,result[2][1] = result[2][1], result[1][2]
        result[1][1] ,result[1][2] = result[1][2], result[1][1]
        result[2][1] ,result[2][2] = result[2][2], result[2][1]

      end

      result.each do |row|
        p row
      end
    end
  end
end

MatrixService.call(5)