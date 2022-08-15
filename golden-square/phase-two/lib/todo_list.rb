class TodoList

    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end

    def list
        return @tasks
    end

    def complete(task)
        fail "Task does not exist" unless @tasks.include?(task)
        @tasks.delete(task)
    end
end