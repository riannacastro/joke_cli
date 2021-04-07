class API 
    
    def self.get_data
       response = RestClient.get("https://v2.jokeapi.dev/joke/Programming,Miscellaneous,Pun,Christmas?blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=single")
        binding.pry
        jokes_array = JSON.parse(response)
    end
end
