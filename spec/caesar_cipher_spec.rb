require './caesar_cipher.rb'

describe "#caesar_cipher" do
    it "should correctly cipher" do
        result = caesar_cipher("What a string!", 5)
        expect(result).to eql("Bmfy f xywnsl!")
    end

    it "should correctly decipher" do
        result = caesar_cipher("Bmfy f xywnsl!", -5)
        expect(result).to eql("What a string!")
    end

    it "should return the same string when shift is zero" do
        result = caesar_cipher("What a string!", 0)
        expect(result).to eql("What a string!")
    end

    it "should return the same string with a full shift" do
        result = caesar_cipher("What a string!", 26)
        expect(result).to eql("What a string!")
    end
end
