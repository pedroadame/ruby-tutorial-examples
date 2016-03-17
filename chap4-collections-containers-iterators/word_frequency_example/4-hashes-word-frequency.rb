require_relative 'words_in_string.rb'
require_relative 'calculate_frequency.rb'
counts = calculate_frequency words_in_string("But I I didn't inhale, he said (emphatically)... ")
sorted = counts.sort_by {|word, count| count }
sorted.last(5).reverse.each {|word, count| puts "#{word}: #{count}"}
