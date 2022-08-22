class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) 
        @tracks << track
    end
  
    def all
      return @tracks
    end
    
    def search_by_title(keyword) 
        return @tracks.select do |track|
            track.title.include?(keyword)
        end
    end
  end