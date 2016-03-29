def show_regexp(string, pattern)
  match = pattern.match string
  if match.length > 0
    puts"#{match.pre_match}"
    match.to_a.each {|m| puts "->#{m}<-"}
    puts "#{match.post_match}" 
  elsif match
    puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    puts "no match"
  end
end

show_regexp('very interesting', /t/)
show_regexp 'very interesting', /t/
show_regexp 'Fats Waller', /all/
