class Joke

    attr_accessor :setup, :delivery, :category

    @@all = []

    def initialize(setup, delivery, category)
        @setup = setup
        @delivery = delivery
        @category = category
        save
    
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end





end
