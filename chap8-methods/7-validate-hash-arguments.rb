class SongList
  def search(field, genre: nil, duration: 120)
    p [field, genre, duration]
  end
end

list = SongList.new
list.search :title
list.search :title, duration: 432
list.search :title, duration: 432, genre: "jazz"
#This explodes because "enre" is not defined in the method!
#list.search :title, duration: 432, enre: "jazz"
