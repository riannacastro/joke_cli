class API 
    
     def self.get_data
        response = RestClient.get("https://v2.jokeapi.dev/joke/Programming,Pun?blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=twopart&amount=10")
         jokes_array = JSON.parse(response)["jokes"]   
         # binding.pry
        jokes_array.each do |joke|
            #binding.pry
            Joke.new(joke)
        end
        #binding.pry
     end
end
