#Inject lets you accumulate values between iterations without having them out
#of it.
#
#
sum = 0
[1,3,5,7].each do |value|
  sum+=value
end
puts sum

mul = 1
[1,3,5,7].each do |value|
  mul*=value
end
puts mul


#The same example, with inject
#
a = [1,3,5,7].inject(0) {|sum, element| sum+element}
puts a

a1 = [1,3,5,7].inject(1) {|mul, element| mul*element}
puts a1
#Let's make it smaller!!
#Arithmetic operations are methods in the Number class, and you can inject
#a method
#
#
b = [1,3,5,7].inject(:+)
puts b

b1 = [1,3,5,7].inject(:*)
puts b1
