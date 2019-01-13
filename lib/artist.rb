#class Artist 
 # attr_accessor :name, :genre
  #@@all = []
  
  #def initialize(name)
   # @name = name 
    #@@all << self
#  end
  
 # def self.all
  #  @@all
#  end
  
 # def new_song(song)
  #   @songs << song
   # song.artist = self
    
#  end
  
#end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end