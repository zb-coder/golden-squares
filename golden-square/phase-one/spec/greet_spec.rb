require 'greet'

describe "greet method" do
    it "greets a user" do
        result = greet("James")
        expect(result).to eq("Hello, James!")
    end
end