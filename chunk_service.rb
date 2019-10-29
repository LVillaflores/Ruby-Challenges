# --- Directions
#
#   Given an array and chunk size, divide the array into many subarrays
#   where each subarray is of length size
#
# --- Examples
#
#   ChunkService.call([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
#   ChunkService.call([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
#   ChunkService.call([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
#   ChunkService.call([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
#   ChunkService.call([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]
#
# --- Run File
#
#   ruby ./chunk_service.rb

class ChunkService
  def self.call(arr, n)
    array = arr.sort
    array = array.each_slice(n) {|a| print a}
  end
end

arr = [7,6,5,4,3,2,1]
ChunkService.call(arr, 3)