def a(line)
  if line =~ /Perl|Python/
    puts "Scripting language mentioned: #{line}"
  else
    puts 'Language not recognised'
  end
end

line = 'Perl'
a(line)
line = 'Python'
a(line)
line = 'Ruby'
a(line)