require 'pry'

class Dog
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each do |dogs|
      puts dogs.name
    end
  end
  # binding.pry

  def self.clear_all
    self.all.clear
  end
end
