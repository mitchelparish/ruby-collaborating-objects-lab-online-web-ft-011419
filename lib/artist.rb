class Artist
  @@all = []
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)
    artist = @@all.collect do |a|
      if name == a.name
        artist = a
      else
        artist = Song.new(name)
      end
      artist
    end





end
