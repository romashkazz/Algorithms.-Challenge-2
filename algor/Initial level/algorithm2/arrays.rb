# Example Input ['[1,9]', '[10,4,5,7]', '[2,3,[9,8,6]]]']

def one_array(argv)
  one_array = []
  # to array one array
  argv.each do |item|
    one_array += item.gsub(/"|\[|\]/, '').split(',')
  end

  # to integer
  one_array.map! { |item| item.to_i}

  # to one array, uniq and delete when % 5
  one_array = one_array.flatten.uniq.delete_if { |e| e % 5 == 0}.sort
end

p one_array(ARGV)
