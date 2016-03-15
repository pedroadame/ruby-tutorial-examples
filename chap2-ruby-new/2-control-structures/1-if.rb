today = Time.now
if today.saturday? or today.sunday?
  puts 'Do chores around the house'
elsif today.tuesday?
  puts 'It\'s tuesday'
else
  puts 'It\'s not tuesday nor weekend'
end
