require 'rspec'
require '../challenge_2/arrays.rb'

describe '#one_array' do
    it 'print correct answer' do
      expect(one_array(['[1,9]', '[10,4,5,7]', '[2,3,[9,8,6]]]'])).to eq([1,2,3,4,6,7,8,9])
    end
end
