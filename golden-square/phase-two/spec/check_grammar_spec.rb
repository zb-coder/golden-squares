require 'check_grammar'

describe 'check_grammar method' do
    context 'given an empty string' do
        it 'returns error message' do
            expect{ check_grammar("") }.to raise_error "Not a sentence"
        end
    end

    context 'given a string that begins with a capital and ends with a full stop' do
        it 'returns true' do
            result = check_grammar("Hi, I am 20.")
            expect(result).to eq (true)
        end
    end

    context 'given a string that does not begin with a capital letter' do
        it 'returns false' do
            result = check_grammar("hi, I am 20.")
            expect(result).to eq (false)
        end
    end

    context 'given a string that does not end with a full stop' do
        it 'returns false' do
            result = check_grammar("Hi, I am 20")
            expect(result).to eq (false)
        end
    end

    context 'given a string that does not begin with a capital and does not end with a full stop' do
        it 'returns false' do
            result = check_grammar("hi, I am 20")
            expect(result).to eq (false)
        end
    end

    context 'given a string that begins with a capital word and ends with a full stop' do
        it 'returns true' do
            result = check_grammar("HI, I am 20.")
            expect(result).to eq (true)
        end
    end

    context 'given a string that begins with a capital and ends with a exclamation mark' do
        it 'returns true' do
            result = check_grammar("Hi, I am 20!")
            expect(result).to eq (true)
        end
    end

    context 'given a string that begins with a capital and ends with a question mark' do
        it 'returns true' do
            result = check_grammar("Hi, I am 20?")
            expect(result).to eq (true)
        end
    end


end