inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

p inst_section['oboe']
p inst_section['bassoon']

#This hash gives warnings in RubyMine for using strings as keys.
#Refer to 5-hash-symbols.rb