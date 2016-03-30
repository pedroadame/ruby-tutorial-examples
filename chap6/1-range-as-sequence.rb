# .. means inclusive range
# ... means exclusive-at-high range
#   0...3 will count 0, 1, 2 and not includes the 3.

1..10
'a'..'z'

#Convert range to array
a = (1..10).to_a
p a

#MEMORY TIP!
# 1...1000000 only includes a Range object with two numbers.
# Convert it to array and it will take full memory with all in between numbers

b = ('bar'..'baz').to_a
p b

# Special methods
d = 0..20
#includes a number?
puts d.include? 10
#max!
puts d.max
#filter!
p d.reject {|number| number < 10}
#let's sum them
puts d.inject(:+)
