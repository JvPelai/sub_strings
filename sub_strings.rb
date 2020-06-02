require 'pry'
dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

def substrings(word,dictionary)
    results = {}
    results.default = 0
    words = word.downcase.split(" ").to_a
    dictionary.each do |string|
        words.each do |str|
            if str.include? string
                results[string] += 1
            end  
        end
    end
    p results
    return results
end

substrings("Howdy partner, sit down! How's it going", dictionary)

