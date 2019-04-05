require 'pry'
class Dog
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        # binding.pry
        @@all.collect do |instance|
            puts instance.name
        end
    end

    def self.clear_all
        @@all.clear
    end 
end

