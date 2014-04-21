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

  ##
  # Convert strings to letter
  def decipher
    @input
      .scan(/([1-9]+)0/)
      .flatten
      .map{|item| covert_to_letter(item) }
      .join
  end

  private

  def covert_to_letter(item)
    letter_index = item[0].to_i - 1
    position = item.length % @letters[letter_index].length - 1
    @letters[letter_index][position]
  end
end
