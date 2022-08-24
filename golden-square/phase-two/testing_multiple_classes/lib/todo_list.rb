class TodoList
    def initialize
        @all_todos = [] 
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing

      @all_todos << todo
    end
  
    def incomplete
      # Returns all non-done todos
      return @all_todos
    end
  
    def complete
      # Returns all complete todos
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end