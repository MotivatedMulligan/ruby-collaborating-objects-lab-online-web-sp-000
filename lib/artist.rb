class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def name=(name)
    @name = (name)
  end
  def add_song(song)
    @songs << song
  end
  def songs
    @songs
  end
  def print_songs
    @songs.each {|song| puts song.name}
  end
  #################
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| cartist.name == name } || Artist.new(name)
#finds/creates artist by name maintaining 
#uniqueness of objects by name property

  end
  def self.all
    @@all 
    #returns all existing Artist instances
  end
end
