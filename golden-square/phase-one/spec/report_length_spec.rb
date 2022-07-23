require 'report_length'

describe 'report_length method' do
    it 'returns the length of the string' do
        result = report_length("hey")
        expect(result).to eq "This string was 3 characters long."
    end
end