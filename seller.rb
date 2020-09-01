class Seller
  attr_reader :name

  #Connected to an agent through a listing


  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listing
    Listing.all.select {|temp| temp.seller == self}
  end

  def agents
    #Take our array of listings, extract agent from each
    self.listing.collect {|temp| temp.agent}.uniq
  end

end
