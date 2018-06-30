require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each{|song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = nil
    self.all.each{|artist| artist_found = artist if artist.name == artist_name }
    if artist_found.nil?
      artist_found = Artist.new(artist_name)
      @@all << artist_found
    end
    artist_found
  end

end
