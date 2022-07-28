require 'make_snippet'

describe "make_snippet method" do
    it 'returns an empty string' do
        result = make_snippet("")
        expect(result).to eq("")
    end

    it 'returns a string of four words' do
        result = make_snippet("his name is dave")
        expect(result).to eq("his name is dave")
    end

    it 'returns a string of five words with a ... when given 6 words' do
        result = make_snippet("his name is dave james green")
        expect(result).to eq("his name is dave james...")
    end
end