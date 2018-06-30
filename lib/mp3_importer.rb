require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    files_array = []
    Dir[@path + "/*"].each{|f| files_array << f.scan(/\/\D+\.mp3/)[0]}
    files_array.map {|file_name| file_name[0] = ""} # Delete the "/" character
    @files = files_array
  end

  def import
    binding.pry
    @files.each { |file|
      x = Song.new_by_filename(file)
    }
  end

end
