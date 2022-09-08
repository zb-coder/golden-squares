class TaskList

    def initialize
        @tasks = []
    end

    def add(task) 
        @tasks << task
    end

    def all
        return @tasks.select do |task|
            !task.complete?
        end
        # But only the non-complete ones
    end

    def complete
        # Returns a list of Task instances
        # But only the complete ones
    end
end
