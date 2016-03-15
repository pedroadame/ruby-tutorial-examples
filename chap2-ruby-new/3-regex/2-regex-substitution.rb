line = 'HoPerlHoPerlhoPerlPythonPython'
# Substitutes first occurrence
newline = line.sub(/Perl/, 'Ruby')
p newline
p line
# Substitutes every occurrence
newerline = newline.gsub(/Python/, 'Ruby')
p newerline