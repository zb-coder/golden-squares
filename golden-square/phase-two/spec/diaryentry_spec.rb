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

        it 'returns zero when the contents string is empty' do 
            diary_entry = DiaryEntry.new('my_title', '')
            expect(diary_entry.count_words).to eq 0
        end
    end

    describe '#reading_time' do
        it 'should respond with one argument' do
            diary_entry = DiaryEntry.new('my_title', '')
            expect(diary_entry).to respond_to(:reading_time).with(1).argument
        end


        context 'given a words per minute(wpm) of two hundred words' do
            it 'returns the number of minutes it takes to read the contents' do
                diary_entry =DiaryEntry.new('my_title', 'one ' * 440)
                expect(diary_entry.reading_time(200)).to eq 3
            end
        end 
        
        context 'given a words per minute(wpm) of 0' do
            it 'fails' do
                diary_entry =DiaryEntry.new('my_title', 'one ')
                expect{diary_entry.reading_time(0)}.to raise_error "Reading time must be above 0"
            end
        end  
    end
end