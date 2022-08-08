class DiaryEntry

    def initialize(title, contents)
        @title = title
        @contents = contents
        @last_word_read = 0
    end

    def title 
        @title
    end

    def contents
        @contents
    end
    
    def count_words
        @contents.split(" ").length
    end

    def reading_time(wpm)
        fail "Reading time must be above 0" unless wpm > 0
        (count_words / wpm.to_f).ceil
    end

    def reading_chunk(wpm, minute)
        no_of_words_we_can_read = wpm * minute
        start_at = @last_word_read
        end_at = @last_word_read + no_of_words_we_can_read
        current_reading_chunk = @contents.split(" ")[start_at, end_at].join(" ")
        @last_word_read = end_at
        current_reading_chunk
    end
end

