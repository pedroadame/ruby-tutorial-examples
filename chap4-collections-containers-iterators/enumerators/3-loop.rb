#Loop repeats blocks until some condition occurs.
#It's smart when used with Enumerators,
#If an enumerator runs out of values, loop automatically exits.

short_enum = [1,2,3].each
long_enum = ('a'..'z').each

loop do
  puts long_enum.next
  #puts short_enum.next
end
#Try it commenting and uncommeting 10th line and see what happens!
