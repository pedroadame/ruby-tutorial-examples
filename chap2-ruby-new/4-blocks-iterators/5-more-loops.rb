#"for" loop equivalent
4.times { puts "Four times!"}

#Range loops
3.upto(10) {|index| puts "This is the #{index} index. Let's reach 10!"}

('a' .. 'e').each { |char| puts char}

#How about printing the Alphabet?
('a'..'z').each { |char| print char.capitalize}
#Print doesn't put end of lines
#Use ... instead of .. if you don't want to include the last element in the loop