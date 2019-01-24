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
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.detect {|i| i.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end






  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
