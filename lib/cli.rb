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
        choice = user_input
        if choice == "yes"
            #print jokes
            print_jokes
        elsif choice == "exit"
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
        select_joke
    end

    def select_joke
        puts "Please enter the topic of a joke you would like to hear."
        choice = user_input
        joke_from_topic(choice)
    end

    def joke_from_topic(joke)
        puts "#{joke}"
        choices
    end



end
