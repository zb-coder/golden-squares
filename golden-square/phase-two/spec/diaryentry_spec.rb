require 'diaryentry'

describe DiaryEntry do
    describe '#initialize' do
        it 'should have a title and contents' do
            diary_entry = DiaryEntry.new('my_title', 'my_contents')
            expect(diary_entry.title).to eq 'my_title'
            expect(diary_entry.contents).to eq 'my_contents'
        end
    end

    describe '#count_words' do
        it 'returns the number of words in the contents' do
            diary_entry =DiaryEntry.new('my_title', 'my_contents')
            expect(diary_entry.count_words).to eq 1
        end
    end
end