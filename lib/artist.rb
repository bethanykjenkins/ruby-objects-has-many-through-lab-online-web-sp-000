class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) #has a name
    @name = name 
    @@all << self
  end
  
  def self.all #knows all artist instances
    @@all 
  end
  
  def new_song (name, genre) #given a name and genre, creates a new song associated with that artist
    Song.new(name, self, genre)
  end
  
  def songs #returns all songs associated with this Artist
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres #has many genres, through songs
    songs.map do |song|
      song.genre 
    end
  end
end