class SongList
  def search(field, params)
    puts params[:genre]
  end
end

list = SongList.new
list.search(:titles, {genre: "jazz", duration_less_than: 270})
list.search(:titles, genre: "jazz", duration_less_than: 270)
