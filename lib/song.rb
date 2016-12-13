require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song_name = self.new(song)
    song_name.artist = Artist.find_or_create_by_name(artist)
    #binding.pry
    song_name
  end

  # def artist_name=(artist_name)
  #   self.artist =
  #   artist.add_song(self)
  # end
end
