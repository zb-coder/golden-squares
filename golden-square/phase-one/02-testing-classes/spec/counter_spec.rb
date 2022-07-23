require 'counter'

describe Counter do

    it 'initally reports a count of zero' do
        counter = Counter.new
        expect(counter.report).to eq  "Counted to 0 so far."
    end

    it 'reports a count of added values with one addition' do
        counter = Counter.new
        counter.add(5)
        expect(counter.report).to eq "Counted to 5 so far."
    end

    it 'reports a count of all added values' do
        counter = Counter.new
        counter.add(5)
        counter.add(9)
        counter.add(1)
        expect(counter.report).to eq "Counted to 15 so far."
    end
end