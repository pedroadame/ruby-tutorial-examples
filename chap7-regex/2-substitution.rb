# To substitute you have the sub and gsub methods on strings

str = "Dog and Cat and Cat again"
puts str

new_str = str.sub(/Cat/, "Bird")
puts new_str

#gsub
n_str = str.gsub(/Cat/, "Bird")
puts n_str

#Now let's modify the original str
#gsub! exists too
str = "Dog and Cat and Cat again"
str.sub! /Cat/, "Bird"
puts str
