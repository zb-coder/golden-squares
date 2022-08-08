class DiaryEntry

    def initialize(title, contents)
        @title = title
        @contents = contents
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
end