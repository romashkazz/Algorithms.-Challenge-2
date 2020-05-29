def calc(word, option, text)
  text = text.downcase.split(' ')
  frequency = 0
  if option.to_i == 1
    text.each { |w| frequency += 1 if w.include? word.downcase }
  end
  if option.to_i == 2
    text.each { |w| frequency += 1 if w == word.downcase }
  end
  frequency
end

def read_file(file_path)
  if File.file?(file_path)
    File.read(file_path)
  else
    "Can't find file :( - #{file_path}"
  end
end

# p calc(ARGV[0], ARGV[1], read_file(ARGV[2]))
