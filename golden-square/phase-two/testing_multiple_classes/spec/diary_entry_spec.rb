require 'diary_entry'

describe DiaryEntry do
    it 'constructs' do
        diary_entry = DiaryEntry.new("title", "my contents 1")
        expect(diary_entry.title).to eq "title"
        expect(diary_entry.contents).to eq "my contents 1"
    end

    describe '#count_words' do

        it "returns zero" do
            diary_entry = DiaryEntry.new("title", "")
            expect(diary_entry.count_words).to eq 0
        end

        it "returns one if the contents has one word" do
            diary_entry = DiaryEntry.new("title", "my")
            expect(diary_entry.count_words).to eq 1
        end

        it "counts the words in the contents" do
            diary_entry = DiaryEntry.new("title", "my contents 1")
            expect(diary_entry.count_words).to eq 3
        end
    end

    describe '#reading_time' do

        it "returns zero" do
            diary_entry = DiaryEntry.new("title", "")
            expect(diary_entry.reading_time(2)).to eq 0
        end

        it "returns one if the contents has one word" do
            diary_entry = DiaryEntry.new("title", "my")
            expect(diary_entry.reading_time(2)).to eq 1
        end

        it "returns a reading time for the contents" do
            diary_entry = DiaryEntry.new("title", "my contents 1")
            expect(diary_entry.reading_time(2)).to eq 2
        end
    end
end