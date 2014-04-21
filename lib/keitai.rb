## Convert numbers to letters
# @param input [String]
# @return [String] converted letters
class Keitai
  LETTERS = ['.,!? ', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz'].freeze

  def self.decipher(input)
    input
      .scan(/([1-9]+)0/)
      .flatten
      .map{|number_string| covert_to_letter(number_string) }
      .join
  end

  def self.covert_to_letter(number_string)
    letter_index = number_string[0].to_i - 1
    position = number_string.length % LETTERS[letter_index].length - 1
    LETTERS[letter_index][position]
  end
end
