def two_times
  yield
  yield
end

two_times {puts "Hello"}

[1,2,4,7].each {|i| puts i}

a = [1,3,5,7,9].find_all {|v| v*v > 30} #Creates a new array, 
# find alone uses only the first result 
b = [1,3,5,7,9].each {|v| v*v > 30} #Copies the array to a new array
p a
p b

%w{Hola que tal}.each.with_index do |palabra, i|
  puts "La palabra #{palabra} esta en el indice #{i} del array"
end
#with_index passes an index to each 
