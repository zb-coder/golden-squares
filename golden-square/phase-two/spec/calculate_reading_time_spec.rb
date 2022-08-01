require 'calculate_reading_time'

describe 'calculate_reading_time method' do
    context 'given an empty string' do
        it 'returns zero' do
            result = calculate_reading_time("")
            expect(result).to eq 0
        end
    end 
end