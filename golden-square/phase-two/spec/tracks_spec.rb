require 'tracks'

describe Tracks do
    context 'given no tracks are added' do
        it 'returns an empty tracks array' do
            tracks = Tracks.new
            expect(tracks.add("")).to eq []
        end
    end
end