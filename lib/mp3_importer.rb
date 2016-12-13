require 'pry'

class MP3Importer
  attr_accessor :path, :filename

  def initialize(path)
    @path = path
    @files = [ ]
  end

  def files
    Dir.glob("./spec/fixtures/mp3s/*.mp3").collect do |filename|
      @files << filename
    end
    @files.each do |file| file.slice! ("./spec/fixtures/mp3s/") end
  end

  def import
    files.each { |other| Song.new_by_filename(other) }
  end
end
