require 'music_library'
require 'track'

describe "integration" do
    context "when we add a track to the library" do
        it "comes back in the list" do
            music_library = MusicLibrary.new 
            track = Track.new("my_title", "my_artist")
            music_library.add(track)
            expect(music_library.all).to eq [track]
        end
    end
end