require 'gratitudes'

describe Gratitudes do
    it 'initially has no gratitudes' do
        message = Gratitudes.new
        expect(message.format).to eq "Be grateful for: "
    end

    it 'adds has more than one gratitude' do
        message = Gratitudes.new
        message.add("Love")
        message.add("Life")
        expect(message.format).to eq "Be grateful for: Love, Life"
    end   
end