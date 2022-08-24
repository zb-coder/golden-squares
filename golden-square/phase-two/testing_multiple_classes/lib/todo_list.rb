class TodoList
    def initialize
        @all_todos = [] 
        @incomplete = []
        @complete = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing

      @all_todos << todo
    end
  
    def incomplete
      # Returns all non-done todos
       @all_todos.map do |todo|
        @incomplete << todo if todo.done? == false
      end 
      return @incomplete
    end
  
    def complete
      # Returns all complete todos

      @all_todos.map do |todo|
        @complete << todo if todo.done? == true
      end
      return @complete
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end