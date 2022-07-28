require 'make_snippet'

describe "make_snippet method" do
    context "given an empty string" do
        it 'returns an empty string' do
            result = make_snippet("")
            expect(result).to eq("")
        end
    end

    context "given a string of four words" do
        it 'returns that string' do
            result = make_snippet("his name is dave")
            expect(result).to eq("his name is dave")
        end
    end

    context "given a string of six words" do
        it 'returns a string of five words with a ...' do
            result = make_snippet("his name is dave james green")
            expect(result).to eq("his name is dave james...")
        end
    end
end