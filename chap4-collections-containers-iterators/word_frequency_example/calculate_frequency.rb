def calculate_frequency(array)
  hash = Hash.new(0)
  array.each do |word|
    hash[word] += 1
  end
  hash
end
