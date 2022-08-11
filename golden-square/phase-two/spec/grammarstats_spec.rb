require 'grammarstats'

describe GrammarStats do
    describe '#check_text' do
        it 'responds with one argument' do
            grammar_stats = GrammarStats.new
            expect(grammar_stats).to respond_to(:check).with(1).argument
        end

        context 'given empty string' do
            it 'fails' do
                grammar_stats = GrammarStats.new
                expect{grammar_stats.check("")}.to raise_error "sentence not provided"
            end
        end

        context 'given the text begins with a capital letter and ends with a sentence-ending punctuation mark' do
            it 'returns true' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("The weather is nice.")).to eq true
            end
        end

        context 'given the text begins with a capital letter and ends with a sentence-ending punctuation mark' do
            it 'returns true' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("The weather is nice!")).to eq true
            end
        end

        context 'given the text begins with a capital letter and ends with a sentence-ending punctuation mark' do
            it 'returns true' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("The weather is nice?")).to eq true
            end
        end

        context 'given the text does not begin with a capital letter' do
            it 'returns false' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("the weather is nice.")).to eq false
            end
        end

        context 'given the text does not end with a sentence-ending punctuation mark' do
            it 'returns false' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("The weather is nice")).to eq false
            end
        end

        context 'given the text does not begin with a capital letter and does not end with a sentence-ending punctuation mark' do
            it 'returns false' do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("the weather is nice")).to eq false
            end
        end

        context 'given the result is true 3 times' do
            it 'returns the percentage good as 75' do
                grammar_stats = GrammarStats.new
                grammar_stats.check("The weather is nice.")
                grammar_stats.check("The weather is nice.")
                grammar_stats.check("The weather is nice.")
                grammar_stats.check("The weather is nice")
                expect(grammar_stats.percentage_good).to eq 75
            end
        end
    end
end