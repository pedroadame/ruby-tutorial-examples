def five(a,b,c,d,e)
  "Passed #{a},#{b},#{c},#{d},#{e}"
end

puts five 1,2,3,4,5
a = [1,2,3,4,5]
puts five *a
b = [2,3]
puts five(1,*b,4,5)
puts five(*(10...15))
