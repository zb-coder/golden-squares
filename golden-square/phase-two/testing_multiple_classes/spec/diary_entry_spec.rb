require 'diary_entry'

describe DiaryEntry do
    it 'constructs' do
        diary_entry = DiaryEntry.new("title", "my contents 1")
        expect(diary_entry.title).to eq "title"
        expect(diary_entry.contents).to eq "my contents 1"
    end

    describe '#count_words' do
        it "counts the words in the contents" do
            diary_entry = DiaryEntry.new("title", "my contents 1")
            expect(diary_entry.count_words).to eq 3
        end
    end
end