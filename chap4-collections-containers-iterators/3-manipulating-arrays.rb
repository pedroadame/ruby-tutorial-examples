a = [1,2,3,4,5,6]
# Index with pair (start,count)
# Remember, the first index is zero!
puts a[1,3] 
puts a[3,1]
# Ranges (.. includes start and end, ... includes only the start position)
puts a[1]
puts a[0..2]
puts a[0...2]

#Inserting data
a[1,3] = 23

stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
#Push adds at the end! 
stack.pop
p stack
#Pop removes at the end!
#Shift and unshift do the same but at the first position
array = [10,12]
array.unshift 9
p array
array.shift
p array

#first and last return entries
#First 2 entries
puts array.first(2)
#last 2 entries
puts array.last(2)
