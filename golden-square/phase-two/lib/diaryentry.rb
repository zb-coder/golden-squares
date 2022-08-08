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

    def reading_time
        0
    end
end