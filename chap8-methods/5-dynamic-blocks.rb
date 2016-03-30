print "(t)imes or (p)uts: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t$/
  puts ((1..10).collect { |x| x*number }.join(", "))
else
  puts ((1..10).collect { |x| x+number }.join(", "))
end

#Better!

print "(t)imes or (p)uts: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t$/
  calc = lambda {|n| n*number }
else
  calc = lambda {|n| n+number }
end
puts ((1..10).collect(&calc).join(", "))
