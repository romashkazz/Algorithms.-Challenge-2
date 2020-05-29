require 'rspec'
require '../challenge_2/2_pascal_triangle.rb'

describe '#calc' do
  it 'print correct answer' do
    expect(calc(5)).to eq('1 4 6 4 1 ')
  end

  it 'print error when argv nil' do
    expect(calc(nil)).to eq('Nil value')
  end

  it 'print error when argv not number' do
    expect(calc('vasia pupkin')).to eq('Not number')
  end
end
