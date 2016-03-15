radiation = 3001
# Standard if
if radiation > 2000
  puts 'Danger, Will Robinson'
end

# Statement modifier
puts 'Danger, Will Robinson' if radiation > 3000

# Another example
square = 4
while square < 1000
  square *= square
end

square = square*square while square < 1000
