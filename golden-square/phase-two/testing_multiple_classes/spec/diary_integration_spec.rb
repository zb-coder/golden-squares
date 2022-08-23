require 'diary'
require 'diary_entry'

describe 'integration' do
    context "when a diary entry is added to the diary" do
        it "lists out the entries added" do
            diary = Diary.new
            diary_entry = DiaryEntry.new("my_title", "my_contents")
            diary.add(diary_entry)
            expect(diary.all).to eq [diary_entry]
        end
    end
end