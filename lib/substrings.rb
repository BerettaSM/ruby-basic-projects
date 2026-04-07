#!/usr/bin/env ruby
# frozen_string_literal: true

def substrings(word, dict)
  counter = Hash.new 0

  word.downcase.split.each do |token|
    dict.each do |substring|
      counter[substring.downcase] += 1 if token.match? substring.downcase
    end
  end

  counter
end
