class Tracks
    def initialize
        @tracks = []
    end

    def add(track)
        @tracks << track
        @tracks.uniq!
    end

    def list
        return @tracks
    end

    def remove(track)
        @tracks.delete(track)
    end
end