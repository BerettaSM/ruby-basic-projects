#!/usr/bin/env ruby
# frozen_string_literal: true

def caesar_cipher(text, rotations = 5)
  tokens = ('a'..'z').to_a.rotate(rotations)

  text.chars.map do |token|
    if ('a'..'z').cover? token.downcase
      index = token.downcase.ord - 'a'.ord
      token.downcase == token ? tokens[index] : tokens[index].upcase
    else
      token
    end
  end.join
end
