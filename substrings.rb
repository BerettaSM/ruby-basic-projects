def substrings words, dictionary
    words.downcase.split.reduce(Hash.new) { |listing, word|
        dictionary.each { |substring|
            substring = substring.downcase
            listing[substring] = listing.fetch(substring, 0) + 1 if word.include? substring
        }
        listing
    }
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
result = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result
