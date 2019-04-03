require 'pry'

class Dog
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    @@all.map do |dog|
      puts dog.name
    end
  end
end
