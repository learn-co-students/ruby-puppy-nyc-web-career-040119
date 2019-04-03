require 'pry'

class Dog
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
    #binding.pry
  end

  def name
    @name
  end

  def self.clear_all
    @@all.clear
  end

  def self.all
    @@all.each do |dog|
      puts dog.name
    end
  end

end
