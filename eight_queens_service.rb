# Have the function EightQueens(strArr) read strArr which will be an array consisting of the 
# locations of eight Queens on a standard 8x8 chess board with no other pieces on the board.
# The structure of strArr will be the following: ["(x,y)", "(x,y)", ...] where (x,y) represents 
# the position of the current queen on the chessboard (x and y will both range from 1 to 8 where 1,1 is the 
# bottom-left of the chessboard and 8,8 is the top-right). Your program should determine if all of the queens are placed in such 
# a way where none of them are attacking each other. If this is true for the given input, return the string true otherwise return 
# the first queen in the list that is attacking another piece in the same format it was provided.
#
# str_arr = ["(2,1)", "(4,3)", "(6,3)", "(8,4)", "(3,4)", "(1,6)", "(7,7)", "(5,8)"]
# EightQueens.call(str_arr)
# expected output: (2,1)
class EightQueensService
  def self.call(str_arr)
    position = (str_arr)
    position_per_queen = position.each_slice(1)
    position_per_queen.each_cons(2) do |pair_1,pair_2|
      pair_1 = pair_1.to_s.gsub(/\W+/, '')
      pair_2 = pair_2.to_s.gsub(/\W+/, '')
      pair1_int = pair_1.to_i
      pair2_int = pair_2.to_i
      pair_1.each_char do |pair1|
        pair_2.each_char do |pair2|
          if pair1.to_i >= 9 || pair2.to_i >= 9 || pair1.to_i <= 0 || pair2.to_i <= 0
            return "Invalid Coordinates"
          end
          if pair1_int%11 == 10 && pair2_int%11 == 10
            return "#{pair_1.split(//).map{|chr| chr.to_i}}:#{pair_2.split(//).map{|chr| chr.to_i}}"
          elsif pair1_int%11 == 0 && pair2_int%11 == 0
            return "#{pair_1.split(//).map{|chr| chr.to_i}}:#{pair_2.split(//).map{|chr| chr.to_i}}"
          elsif pair1_int%11 == 1 && pair2_int%11 == 1
            return "#{pair_1.split(//).map{|chr| chr.to_i}}:#{pair_2.split(//).map{|chr| chr.to_i}}"
          elsif pair1 == pair2
            return "#{pair_1.split(//).map{|chr| chr.to_i}}:#{pair_2.split(//).map{|chr| chr.to_i}}"
          else
            next
          end
        end
      end
    end
  end
end

str_arr = ["(1,1)", "(1,5)", "(6,3)", "(8,4)", "(3,4)", "(1,6)", "(7,7)", "(5,8)"]
p EightQueensService.call(str_arr)