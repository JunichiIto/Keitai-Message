class Keitai

  def initialize(input)
  # create a hash 
    @letters = []
    @letters[1] = ".,!? "
    @letters[2] = "abc"
    @letters[3] = "def"
    @letters[4] = "ghi"
    @letters[5] = "jkl"
    @letters[6] = "mno"
    @letters[7] = "pqrs"
    @letters[8] = "tuv"
    @letters[9] = "wxyz"
    @letters[0] = ""
    # check if input has 0
    # trim the first 0s and split input by 0 
    if input.include?("0") 
      @input = input.gsub(/^0+/,"")
    end
  end

  
  def input
    @input
  end

  def decipher
    # delete 0 at the end if there are more than one
     
    # find the first letter and count the length
    # and put it in an array [[first-number, length]]
    # e.g. [[2,1]], [[2,2]], [[2,5]], [[4,2],[3,2],[5,3],[6,3],[1,2],[1,5],[9,1],[6,3],[7,3],[5,3],[3,1],[1,3]]  
    if @input
      main_arr = @input.split("0").map do |item| 
        number = item[0].to_i
        item_length = item.length
        # [number, item_length]
        letter_length = @letters[number].length
        # some array may have [0,0] so eliminate them
        if item_length > 0
          position = item_length % letter_length
          @letters[number][position-1]
        end
      end
    end
    main_arr.join
     # find letter by using modulus operator for first part of each item of array item[], position = item[0] % letters[item[0]] and this should give the position of letter in the hash letters[item[0]][position-1]
  
  
  
  
  
  end
   

# Insert/add them to an array








end
