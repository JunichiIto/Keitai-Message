## Convert numbers to letters
# @param input [String]
# @return [String] converted letters
class Keitai
  attr_reader :input

  ##
  # allocate letters to array using array key
  def initialize(input)
    @letters = []
    @letters[1] = '.,!? '
    @letters[2] = 'abc'
    @letters[3] = 'def'
    @letters[4] = 'ghi'
    @letters[5] = 'jkl'
    @letters[6] = 'mno'
    @letters[7] = 'pqrs'
    @letters[8] = 'tuv'
    @letters[9] = 'wxyz'
    @letters[0] = ''
    @input = input.gsub(/^0+/, '') if input.include?('0')
  end

  ##
  # Convert strings to letter
  def decipher
    if input
      main_arr = input.split('0').map do |item|
        number = item[0].to_i
        item_length = item.length
        letter_length = @letters[number].length
        if item_length > 0 and /^(\d)\1*$/.match(item)
          position = item_length % letter_length
          @letters[number][position - 1]
        end
      end
    end
    main_arr.join
  end
end
