require 'spec_helper'

describe Keitai do
  subject { Keitai.decipher(input) }

  context 'without 0' do
    let(:input) { '5' }
    it { should eq '' }
  end

  context 'single input' do
    let(:input) { '20' }
    it { should eq 'a' }
  end

  context 'plural inputs' do
    let(:input) { '220' }
    it { should eq 'b' }
  end

  context 'with input loop' do
    let(:input) { '222220' }
    it { should eq 'b' }
  end

  context 'complicated input' do
    let(:input) { '44033055505550666011011111090666077705550301110' }
    it { should eq 'hello, world!' }
  end

  context 'start with 0 and repeat 0' do
    let(:input) { '000555555550000330000444000080000200004440000' }
    it { should eq 'keitai' }
  end
end
