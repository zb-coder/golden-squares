require 'make_snippet'

describe "make_snippet method" do
    it 'returns an empty string' do
        result = make_snippet("")
        expect(result).to eq("")
    end
end