def calc(number)
  return 'Nil value' if number.nil?
  return 'Not number' unless number.is_a? Integer
  value = 0
  result = ''
  (0...number).each do |i|
    value = factorial(number - 1) / (factorial(i) * factorial(number - i - 1))
    result += "#{value} "
  end
  result
end

def factorial(number)
  result = 1
  return 1 if number < 2

  (1..number).each do |i|
    result *= i
  end
  result
end