require 'stringbuilder'

describe StringBuilder do
    context 'initially' do
        it 'inially returns an empty string output' do
            string_builder = StringBuilder.new
            expect(string_builder.output).to eq ""
        end

        it 'returns returns a length of zero' do
            string_builder = StringBuilder.new
            expect(string_builder.size).to eq 0
        end
    end

    context "given one addition of a string" do
        it 'outputs that string' do
            string_builder = StringBuilder.new
            string_builder.add("Hiya")
            expect(string_builder.output).to eq "Hiya"
        end

        it 'has a length of that strings thing' do
            string_builder = StringBuilder.new
            string_builder.add("Hiya")
            expect(string_builder.size).to eq 4
        end
    end

    context "given many additions of a string" do
        it 'outputs that string' do
            string_builder = StringBuilder.new
            string_builder.add("Hiya")
            string_builder.add("Guys")
            string_builder.add("I'm")
            string_builder.add("Here")
            expect(string_builder.output).to eq "HiyaGuysI'mHere"
        end

        it 'has a length of that strings thing' do
            string_builder = StringBuilder.new
            string_builder.add("Hiya")
            string_builder.add("Guys")
            string_builder.add("I'm")
            string_builder.add("Here")
            expect(string_builder.size).to eq 15
        end
    end
end