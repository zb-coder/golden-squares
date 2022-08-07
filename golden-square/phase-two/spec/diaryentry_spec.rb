require 'diaryentry'

describe DiaryEntry do
    it 'should have a title and contents' do
        diary_entry = DiaryEntry.new('my_title', 'my_contents')
        expect(diary_entry.title).to eq 'my_title'
        expect(diary_entry.contents).to eq 'my_contents'
    end
end