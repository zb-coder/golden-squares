require 'music_library'

describe MusicLibrary do
    context "initially" do
        it "is empty" do
            music_library = MusicLibrary.new
            expect(music_library.all).to eq []
        end
    end
end