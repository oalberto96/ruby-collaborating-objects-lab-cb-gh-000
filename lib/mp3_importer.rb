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
      file_name[0] = "" # Delete the "/" character
       
    end
  end

  def import
  end

end
