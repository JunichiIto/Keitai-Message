require './spec_helper'
require './keitai.rb'


describe Keitai do


  before do
    input1 = 5
    input2 = 20
    input3 = 220
    input4 = 222220
    input5 = 44033055505550666011011111090666077705550301110
    input6 = 000555555550000330000444000080000200004440000

  end


  specify{ expect(@intersection.check_size?). to eq false }

end
