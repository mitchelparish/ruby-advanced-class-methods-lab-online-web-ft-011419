class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    c = self.new
    c.save
    c
  end 









  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def find_or_create_by_name(name)
  end


end
