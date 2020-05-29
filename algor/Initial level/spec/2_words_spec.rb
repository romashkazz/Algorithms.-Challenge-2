require 'rspec'
require '../challenge_2/2_words.rb'

describe '#calc' do
  before(:each) do
    @text = 'Зуб мій Мене болить зуб Зубр біжить галявиною Зазубрений Зуб'
  end

  it 'print correct answer using mode 1' do
    expect(calc('Зуб', 1, @text)).to eq(5)
  end

  it 'print correct answer using mode 2' do
    expect(calc('Зуб', 2, @text)).to eq(3)
  end

  it 'print error if cant find file' do
    expect(read_file('some_path.txt')).to eq("Can't find file :( - some_path.txt")
  end
end
