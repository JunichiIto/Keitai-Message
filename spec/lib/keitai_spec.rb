require 'spec_helper'

describe Keitai do
  before do
    @input1 = '5'
    @input2 = '20'
    @input3 = '220'
    @input4 = '222220'
    @input5 = '44033055505550666011011111090666077705550301110'
    @input6 = '000555555550000330000444000080000200004440000'
    @input7 = '2233440'
    @keitai1 = Keitai.new(@input1)
    @keitai2 = Keitai.new(@input2)
    @keitai3 = Keitai.new(@input3)
    @keitai4 = Keitai.new(@input4)
    @keitai5 = Keitai.new(@input5)
    @keitai6 = Keitai.new(@input6)
    @keitai7 = Keitai.new(@input7)

  end


  specify { expect(@keitai1.input). to eq nil }
  specify { expect(@keitai2.input). to eq '20' }
  specify { expect(@keitai3.input). to eq '220' }
  specify { expect(@keitai4.input). to eq '222220' }
  specify { expect(@keitai5.input). to eq  '44033055505550666011011111090666077705550301110' }
  specify { expect(@keitai6.input). to eq '555555550000330000444000080000200004440000' }

  specify { expect(@keitai2.decipher). to eq 'a'}
  specify { expect(@keitai3.decipher). to eq 'b' }
  specify { expect(@keitai4.decipher). to eq 'b' }
  specify { expect(@keitai5.decipher). to eq 'hello, world!' }
  specify { expect(@keitai6.decipher). to eq 'keitai' }
  specify { expect(@keitai7.decipher). to eq '' }


end
