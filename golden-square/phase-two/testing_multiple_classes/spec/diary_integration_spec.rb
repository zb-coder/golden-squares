require 'diary'
require 'diary_entry'

describe 'integration' do
    context "when diary entries are added to the diary" do
        it "lists out the entries added" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end

    describe 'word counting behaviour' do
        it "counts the words in all diary entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 6
        end
    end

    describe 'reading time bahviour' do
        it "calculates the reading time for all diary entries where it fits exactly" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 3
        end
    end

    describe 'reading time bahviour' do
        it "calculates the reading time for all diary entries where it falls over a minute" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents ")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 3
        end
    end
end