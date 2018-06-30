require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = []
    Dir[@path + "/*"].each{|f| files_array << f.match(/\/\D+\.mp3/)}
    puts files_array
    binding.pry
  end

  def import
  end

end
