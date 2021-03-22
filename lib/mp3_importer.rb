class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  #  @library = []
  end
  ##########
  def files
    Dir.entries(self.path)[2..5]
  #!  @files = Dir.entries(path)
#!  @files.delete_if {|file| file == "." || file = ".."}
#loads all the mp3 files in the path directory
#normalizes the filename to just the mp3
#filename with no path
  end

  def import
    #! @library << files
    files.each do |filename| Song.new_by_filename(filename)
    #imports files into
    #library by creating songs from a filename
  end
end
end
