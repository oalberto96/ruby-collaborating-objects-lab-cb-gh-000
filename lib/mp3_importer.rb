require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files_array = []
    Dir[@path + "/*"].each{|f| files_array << f.match(/\/\D+\.mp3/)}
    files_array.map do |file_name|
      binding.pry # Delete the "/" character
    end
    puts files_array
  end

  def import
  end

end
