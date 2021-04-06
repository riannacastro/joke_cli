class Joke

    attr_accessor :setup, :delivery

    @@all = []

    def initialize(setup, delivery)
        @setup = setup
        @delivery = delivery
        save
    
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end


# binding.pry


end
