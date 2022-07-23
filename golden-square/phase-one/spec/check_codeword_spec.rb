require 'check_codeword'

describe 'check codeword method' do
    it 'returns the correct message is given the correct codeword' do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it 'returns the close message if given a close codeword' do
        result = check_codeword("he")
        expect(result).to eq "Close, but nope."
    end

    it 'returns the wrong message if given a codeword with the correct first letter' do
        result = check_codeword("him")
        expect(result).to eq "WRONG!"
    end

    it "returns the wrong message if given the wrong codeword" do
        result = check_codeword("no")
        expect(result).to eq "WRONG!"
    end
end
