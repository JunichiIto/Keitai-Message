## Convert numbers to letters
# @param input [String]
# @return [String] converted letters
class Keitai
  ##
  # allocate letters to array using array key
  def initialize(input)
    @letters = ['', '.,!? ', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']
    @input = input
  end

  def normalized_input
    @input.include?('0') ? @input.gsub(/^0+/, '') : ''
  end

  ##
  # Convert strings to letter
  def decipher
    normalized_input.split('0').map {|item|
      number = item[0].to_i
      item_length = item.length
      letter_length = @letters[number].length
      if item_length > 0 and /^(\d)\1*$/.match(item)
        position = item_length % letter_length
        @letters[number][position - 1]
      end
    }.join
  end
end
