
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def new_by_filename(file_name)
    artist_song = file_name.split(" - ")
    artist_name = artist_song.first
    song_name = artist_song.last
    artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(song_name)
  end

end
