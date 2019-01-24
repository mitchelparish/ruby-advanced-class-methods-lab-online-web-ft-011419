require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    c = self.new
    c.save
    c
  end

  def self.new_by_name(name)
    song = self.new


    song.name = name
    binding.pry 
    
    song
  end









  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
