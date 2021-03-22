class Song
  attr_accessor :name, :artist
@@all = []
  def initialize(name)
    @name = name
  end
def artist=
    song.artist = artist
end
#########
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
    #associates new song instance with
    #artist from the filename
  end

 def self.all
   @@all #returns all existing Song instances
 end

 def artists_name=(artist)
   @artist_name = artist
   #accepts artist's name, finds/creates
   #Artist instance and assigns to
   #Song's artist attribute
 end

end
