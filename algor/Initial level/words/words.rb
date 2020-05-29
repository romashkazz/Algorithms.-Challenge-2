=begin

Steps:
1. Read file
2. Count method

=end

# Read file
def read_file
  if File.file?(ARGV[0])
    File.read(ARGV[0])
  else
    puts "Can't find file #{ARGV[0]}"
  end
end

# Count frequency words and return hash
def count_words(text)
  words = text.to_s.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  frequency.sort_by { |_key, value| -value }
end

# Print answer
p count_words(read_file)
