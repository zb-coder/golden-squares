require 'diary'

describe Diary do
    context "when no diary enteries are added" do
        it "intially" do
            diary = Diary.new
            expect(diary.all).to eq []
        end
    end
end