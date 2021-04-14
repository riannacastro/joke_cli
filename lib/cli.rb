class CLI
# binding.pry

    def start
        puts "Hello! We are the Jokesters! What is your name?" 
        API.get_data
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you, #{name}! Would you like to hear a joke? Enter \"yes\" to see category list or \"exit\" to quit."
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
        joke = Joke.all.uniq{|joke| joke.category}
    
        joke.each.with_index(1) do |joke, index|
            puts "#{index}. #{joke.category}" 
        end
        select_joke
    end

    def select_joke
        puts "Please enter the topic of a joke you would like to hear. Type \"exit\" to exit."
        choice = user_input
        joke_from_topic(choice)
    
    end

    def joke_from_topic(joke)
      pick_joke = Joke.find_joke(joke)
        puts "\"#{pick_joke.setup}\"" 
        puts "press \"?\" to continue."
       # if i type an invalid response it won't let me put the correct "?" (will continue to say invalid)
        if chooses == true
             puts "\"#{pick_joke.delivery}\" Type \"haha\" to continue."
             haha_continue
            # new_joke
        else 
        puts invalid 
        end
    end

    def haha_continue
        continue = user_input
        if continue == "haha"
            new_joke
        else
            puts "Type \"haha\" to continue."
        end

    end


    def new_joke
        puts "Would you like to hear another joke? Type \"yes\" to see list or \"exit\" to exit."
        another_joke

    end

    def another_joke
        choice = user_input
        if choice == "yes"
            print_jokes
        elsif choice == "exit"
            else
                puts "Please enter a valid response."
            end

    end


     def chooses
        choice = user_input
        if choice == "?"
        chooses = true 
        else
        puts invalid
        end
    end







end
