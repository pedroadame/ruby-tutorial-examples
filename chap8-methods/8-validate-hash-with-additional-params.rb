class SongList
  def search(field, genre: nil, duration: 120, **rest)
    p [field, genre, duration, rest]
  end
end

list = SongList.new
options = { duration: 432, stars: 4, genre: "jazz", tempo: "slow" }
list.search(:title, options)
