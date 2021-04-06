class CLI
# binding.pry

    def start
        puts "Hello! We are the Jokesters! What is your name?" 
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you, #{name}! Would you like to hear a joke?"

    end

    def choices
    
    end




end
