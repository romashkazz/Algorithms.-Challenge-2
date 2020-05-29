require 'rspec'
require '../challenge_1/3_geometry.rb'

describe '#calc' do
  it 'must be AOX > BOX' do
    expect(calc([1, 2, 1, 1])).to eq('L AOX > L BOX')
  end

  it 'must be AOX < BOX' do
    expect(calc([1, 1, 1, 2])).to eq('L AOX < L BOX')
  end

  it 'must be AOX = BOX' do
    expect(calc([1, 1, 1, 1])).to eq('L AOX = L BOX')
  end

  it 'print error about arguments' do
    expect(calc([1, 2, 1, 1, 4])).to eq('Incorrect number of params ARGV. Format: x1 y1 x2 y2')
  end
end