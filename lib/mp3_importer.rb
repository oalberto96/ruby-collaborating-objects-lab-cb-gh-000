require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = []
    Dir[@path + "/*"].each{|f| files_array << f.scan(/\/\D+\.mp3/)[0]}
    files_array.map {|file_name| file_name[0] = ""} # Delete the "/" character
    files_array
  end

  def import
    files.each_char { |file| Song.new_by_filename(file)  }
  end

end
