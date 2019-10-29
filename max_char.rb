
class MaxChar
  def self.call(str)
    sentence = str.downcase.delete(' ')
    count = 0
    max_count = 0
    char = ""
    sentence.each_char do |ch|
      count = sentence.count(ch)
      if count > max_count
        max_count = count
        char = ch
      end
    end
    puts str
    puts "#{char} => #{max_count}"
  end
end

print MaxChar.call('Hello hduiaHfioawhfuawgfowhie2103urh9381q48134y1i4h109309184121231248124781247239820748016801there.')