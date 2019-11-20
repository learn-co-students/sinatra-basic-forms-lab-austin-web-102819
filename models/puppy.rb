class Puppy
    attr_accessor :name, :breed, :age
    @@all = []
    def initialize(name, breed, months_old)
        @name = name 
        @breed = breed
        @age = months_old
        @@all << self
    end
    def self.all
        @@all
    end

end