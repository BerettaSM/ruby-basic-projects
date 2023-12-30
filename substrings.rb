#!/usr/bin/env ruby

def substrings word, dict
  counter = Hash.new 0

  word.downcase.split.each do |token|
    dict.each do |substring|
      counter[substring.downcase] += 1 if token.match? substring.downcase
    end
  end

  counter
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)

