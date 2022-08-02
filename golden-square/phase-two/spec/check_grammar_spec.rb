require 'check_grammar'

describe 'check_grammar method' do
    context 'given an empty string' do
        it 'returns error message' do
            expect{ check_grammar("") }.to raise_error "Not a sentence"
        end
    end
end