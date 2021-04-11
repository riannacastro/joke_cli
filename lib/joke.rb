class Joke

    attr_accessor :setup, :delivery, :category

    @@all = []

    def initialize(joke_hash)
        joke_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        
        save
    
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end





end
