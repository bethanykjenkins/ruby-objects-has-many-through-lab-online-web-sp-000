class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name) #has a name
    @name = name
    @@all << self 
  end
  
  def self.all  #knows about all genre instances
    @@all 
  end
  
  def songs #has many songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists #has many artists through songs
    songs.map do |song|
      song.artist 
    end 
  end
end
