## Convert numbers to letters
# @param input [String]
# @return [String] converted letters
class Keitai
  ##
  # allocate letters to array using array key
  def initialize(input)
    @letters = ['.,!? ', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']
    @input = input
  end

  def normalized_input
    @input.include?('0') ? @input.gsub(/^0+/, '') : ''
  end

  ##
  # Convert strings to letter
  def decipher
    normalized_input
      .split('0')
      .reject(&:empty?)
      .map{|item| covert_to_letter(item) }
      .join
  end

  def covert_to_letter(item)
    letter_index = item[0].to_i - 1
    position = item.length % @letters[letter_index].length - 1
    @letters[letter_index][position]
  end
end
