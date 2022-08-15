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

    context 'given tracks are added' do
        it 'returns it in a list' do
            tracks = Tracks.new
            tracks.add("Three Little Birds")
            tracks.add("Stayin' Alive")
            expect(tracks.list).to eq ["Three Little Birds", "Stayin' Alive"]
        end
    end

    context 'given duplicate tracks are added' do
        it 'returns only one in a list' do
            tracks = Tracks.new
            tracks.add("Three Little Birds")
            tracks.add("Three Little Birds")
            expect(tracks.list).to eq ["Three Little Birds"]
        end
    end

    context 'given the user wants to remove a track' do
        it 'removes that track from the list' do
            tracks = Tracks.new
            tracks.add("Three Little Birds")
            tracks.add("Stayin' Alive")
            tracks.remove("Three Little Birds")
            expect(tracks.list).to eq ["Stayin' Alive"]
        end
    end
end
