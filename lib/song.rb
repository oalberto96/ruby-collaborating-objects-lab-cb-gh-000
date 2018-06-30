
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_song = file_name.split(" - ")
    artist_name = artist_song.first
    song_name = artist_song[1]
    artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(song_name)
    artist.add_song(song)
  end

end
