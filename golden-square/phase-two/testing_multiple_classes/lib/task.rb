class Task

    def initialize(title) # Title is a string
        @title = title
        @complete = false
    end

    def title
        @title
    end

    def mark_complete
        @complete = true
        # Returns nothing
    end

    def complete?

        return @complete
        #Returns true if marked completed, otherwise false
    end
  
end