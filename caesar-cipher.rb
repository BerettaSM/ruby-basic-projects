def caesar_cipher string, shift
    letters = ('a'..'z').to_a
    string.split("").collect { |char|
        unless letters.include? char.downcase
            char
        else
            char_index = letters.find_index char.downcase
            mapped_char = letters[(char_index + shift) % letters.length]
            char.upcase == char ? mapped_char.upcase : mapped_char
        end 
    }.join("")
end


puts(caesar_cipher "What a string!", 5)
puts(caesar_cipher "Bmfy f xywnsl!", -5)
puts(caesar_cipher "This is another test.", 999)
puts(caesar_cipher "Estd td lyzespc epde.", -999)