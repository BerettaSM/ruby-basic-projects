#!/usr/bin/env ruby


def caesar_cipher text, rotations = 5
  tokens = ('a'..'z').to_a.rotate(rotations)
  
  text.split('').map do |token|
    if ('a'..'z').include? token.downcase
      index = token.downcase.ord - 'a'.ord
      token.downcase == token ? tokens[index] : tokens[index].upcase
    else
      token
    end
  end.join
end


puts(caesar_cipher "What a string!", 5)
puts(caesar_cipher "Bmfy f xywnsl!", -5)
puts(caesar_cipher "This is another test.", 999)
puts(caesar_cipher "Estd td lyzespc epde.", -999)
