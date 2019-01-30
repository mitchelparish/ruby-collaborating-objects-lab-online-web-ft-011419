require 'pry'

class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_and_song = file_name.split(" - ")
    song = self.new(artist_and_song)[1]
    artist = Artist.new(artist_and_song)[0]
  end
end
