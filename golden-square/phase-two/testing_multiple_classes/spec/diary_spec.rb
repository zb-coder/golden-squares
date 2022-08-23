require 'diary'


describe Diary do
    context "initially" do
        it "has an empty list of entries" do
            diary = Diary.new
            expect(diary.all).to eq []
        end

        it "has a count of 0" do
            diary = Diary.new
            expect(diary.count_words).to eq 0
        end

        it "has a reading time of 0" do
            diary = Diary.new
            expect(diary.reading_time(2)).to eq 0
        end
    end
end