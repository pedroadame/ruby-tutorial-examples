def varargs(a1, *rest)
  "a1 = #{a1}, rest = #{rest.inspect}"
end

puts varargs "one"
puts varargs "one", "two"
puts varargs "one", "two", "three"

#If the splatted argument isn't used, you can put only an * instead of
#*param_name

