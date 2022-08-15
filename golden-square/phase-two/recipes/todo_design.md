# {{PROBLEM}} Tasks Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
    def initialize
        #...
    end

    def add(task) #task is a string representing something to todo
    # No return value
    end

    def list
    # returns a list of the tasks added in the add method
    end

    def complete(task) #task is a string representing a task to mark complete
    # returns nothing
    # fails if the task doesn't exist
    end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.list #=> []

# 2
todo_list = TodoList.new
todo_list.add("Buy some bread")
todo_list.list #=>["Buy some bread"]

# 3
todo_list = TodoList.new
todo_list.add("Buy some bread")
todo_list.add("Put petrol in the car")
todo_list.list #=>["Buy some bread", "Put petrol in the car"]

# 4
todo_list = TodoList.new
todo_list.add("Buy some bread")
todo_list.list #=>["Buy some bread", "Put petrol in the car"]
todo_complete.list #=>["Put petrol in the car"]
todo_list.list #=>["Buy some bread"]

# 5
todo_list = TodoList.new
todo_list.add("Buy some bread")
todo_list.complete("Buy some soap")
todo_list.list #=> #Task does not exist
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

