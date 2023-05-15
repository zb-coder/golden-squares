# {{PROBLEM}} Tasks Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Diary
    def add(entry)
        # Entry is an instance of Entry
    end

    def all
        # Returns a list of diary entry instances
    end

    def count_words

    end
end

class DiaryEntry

    def initialize(title, contents)

    end

    def title
        # Returns title
    end

    def contents
        # Returns contents
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

