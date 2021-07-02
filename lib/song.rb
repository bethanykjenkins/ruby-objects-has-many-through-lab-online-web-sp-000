class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize (name, artist, genre) #initializes with a name, an artist and a genre
    @name = name
    @artist = artist #belongs to an artist
    @genre = genre  #belong to a genre
    @@all << self 
  end
  
  def self.all #knows about all song instances
    @@all 
  end

  
end