require 'count_words'

describe 'count_words method' do
    context 'given an empty string' do
        it 'returns the number of words in a string which is 0' do
            result = count_words("")
            expect(result).to eq(0)
        end
    end

    context 'given a string with 5 words' do
        it 'returns the number of words in this string' do
            result = count_words("I like the weather today")
            expect(result).to eq(5)
        end
    end
end