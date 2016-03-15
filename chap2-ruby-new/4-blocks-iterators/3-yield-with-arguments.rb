def say_something
  yield('Anthony', 'hello!')
  yield('Andy', 'bye bye!')
end

say_something { |person, thing_said| puts "#{person} says: #{thing_said}"}

#Use |something| to receive parameters from yield!