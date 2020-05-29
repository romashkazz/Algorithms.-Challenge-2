require 'rspec'
require '../challenge_1/2_fibonacci.rb'

describe '#fibonacci' do
    it 'print correct answer' do
      expect(fibonacci(0)).to eq(0)
      expect(fibonacci(1)).to eq(1)
      expect(fibonacci(2)).to eq(1)
      expect(fibonacci(3)).to eq(2)
      expect(fibonacci(4)).to eq(3)
      expect(fibonacci(5)).to eq(5)
      expect(fibonacci(10)).to eq(55)
      expect(fibonacci(15)).to eq(610)
      expect(fibonacci(20)).to eq(6765)
      expect(fibonacci(30)).to eq(832040)
    end
end
