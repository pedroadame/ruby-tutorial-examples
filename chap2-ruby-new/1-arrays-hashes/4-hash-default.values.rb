histogram = Hash.new(0) #Defining default value for the hash
p histogram['ruby'] #0
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby'] #1
