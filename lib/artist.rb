require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = [ ]

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name }
    else
      self.new(name)
    end
  end

  def add_song(song_name)
    @songs << song_name
  end

  def print_songs
    songs.each { |s| puts s.name }
  end
end
