class String
  define_method(:scrabble) do # defining the method so it can be applied to strings.
    score = [] # empty array created to collect individual point values for each letter
    self.split("").map do |letter| # split appart each letter into its own index that is a new copy of the array and iterate over it with map. |letter| is the parameter seen as a variable by the method itself to view each index.

      scrabble_letters = {
        1 => ["a","e","i","o","u","r","s","t","l","n"],
        2 => ["d","g"],
        3 => ["b","c","m","p"],
        4 => ["f","h","v","w","y"],
        5 => ["k"],
        8 => ["j","x"],
        10 => ["q","z"]
      } # Hash with keys and values split into arrays.

      scrabble_letters.each_pair do |key,value| # like a constructor because the keys and values can be reused with the each_pair method
      if value.include?(letter) #branch over each key and value to see if value is present for the letter
        score.push(key) # push the key that corresponds with letter value
      end
      end
    end
    score.inject(:+) # magic unicorns and gnomes haveing a tea party on the moon... but really takes the [] score and returns each index as an integer and adds them together. 
  end
end
