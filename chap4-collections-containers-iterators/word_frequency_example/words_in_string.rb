def words_in_string(string)
  string.downcase.scan(/[\w']+/)
end
