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

    describe '#count_words' do
        it "counts the words in all diary entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 6
        end
    end
end