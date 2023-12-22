require './caesar_cipher.rb'

describe "#caesar_cipher" do
    it "should correctly cipher" do
        result = caesar_cipher("What a string!", 5)
        expect(result).to eql("Bmfy f xywnsl!")
    end
end
