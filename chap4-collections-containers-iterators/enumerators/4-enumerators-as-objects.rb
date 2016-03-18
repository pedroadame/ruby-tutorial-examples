result = []
[ 'a', 'b', 'c' ].each_with_index {|item, index| result.push [item, index] }
p result

#But how to iterate with index without each?
result = []
"cat".each_char { |item| result << item }
p result

#each_char_with_index doesn't exist!
#with_index to the rescue
result = []
"cat".each_char.with_index { |item, index| result << [item, index] }
p result #We have it!!
