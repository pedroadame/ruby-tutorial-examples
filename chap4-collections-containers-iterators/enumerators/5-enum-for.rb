#Enum that calls method!

enum = "cat".enum_for(:each_char)
p enum.to_a

#Passing parameters!
enum_threes = (1..10).enum_for(:each_slice, 3)
p enum_threes.to_a
