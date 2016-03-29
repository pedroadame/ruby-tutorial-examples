#Regex are written between forward slashes /cat/ <- this is a pattern!
# =~ op checks regexes

p /cat/ =~ "dog and cat"
p /cat/ =~ "catch"
p /cat/ =~ "Cat"

# !~ op checks regexes that DOESN'T match!
p /cat/ !~ "dog and cat"
p /cat/ !~ "catch"
p /cat/ !~ "Cat" # <- True!
