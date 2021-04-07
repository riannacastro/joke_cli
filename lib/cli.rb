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
        puts "Nice to meet you, #{name}! Would you like to hear a joke? Enter \"yes\" to see list or \"exit\" to quit."
        choices
    end

     def choices
        selection = user_input
        if selection == "yes"
            #print jokes
            print_jokes
            choices
        elsif selection == "exit"
            puts goodbye

        else
            invalid 
        end
     end

     def goodbye
        puts "Thank you for viewing the Jokesters! See you again!"
     end

     def invalid
        puts "sorry... please choose a valid response."
        choices
     end

     def print_jokes
        jokes = ["Christmas", "Programming", "Pun", "Misc"]
        jokes.each.with_index(1) do |joke, index|
            puts "#{index}. #{joke}"
        end
    end
    




end
