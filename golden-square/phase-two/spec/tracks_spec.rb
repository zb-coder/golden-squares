require 'tracks'

describe Tracks do
    context 'given no tracks are added' do
        it 'returns an empty tracks array' do
            tracks = Tracks.new
            expect(tracks.list).to eq []
        end
    end

    context 'given a track is added' do
        it 'returns it in a list' do
            tracks = Tracks.new
            tracks.add("Three little birds")
            expect(tracks.list).to eq ["Three little birds"] 
        end
    end
end