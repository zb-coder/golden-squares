class Diary
    def initialize
      @entries = []
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
      return @entries.map do |entry|
        entry.count_words
      end.sum
    end
  
    def reading_time(wpm) 
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
         readable_entries = @entries.filter do |entry| 
          entry.reading_time(wpm) <= minutes
         end
         sorted_by_longest = readable_entries.sort_by do |entry|
          entry.count_words
         end
         sorted_by_longest.last


      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    end
  end