# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them dissapear from the list.

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```

┌───────────────────────────┐
│ TodoList                  │
│ --------                  │
│                           │
│ - add                     │
│ - all                     │
│ - completed               │
│                           │
└───────────┬───────────────┘
            │
            │  TodoList has zero or
            ▼  more Tasks
┌───────────────────────────┐
│ Task                      │
│ --------                  │
│                           │
│ - mark complete           │
│ - title                   │
│ - complete?               │
│                           │
└───────────────────────────┘

```

_Also design the interface of each class in more detail._

```ruby
class TaskList

  def add(task) # Task is an instance of Task
  end

  def all
    # Returns a list of Task instances
    # But only the non-complete ones
  end

  def complete
    # Returns a list of Task instances
    # But only the complete ones
  end
end

class Task

  def initialize(title) # Title is a string

  end

  def title
    # Returns the title as a string
  end

  def mark_complete
    # Marks the task as complete
    # Returns nothing
  end

  def complete?
    #Returns true if marked completed, otherwise false
  end

end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

#1
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_list.add(task_1)
task_list.add(task_2)
task_list.add # => [task_1, task_2]

#2
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_2.mark_complete
task_list.add(task_1)
task_list.add(task_2)
task_list.all # => [task_1]

#3
task_list = TaskList.new
task_1 = Task.new("Walk the cat")
task_2 = Task.new("Walk the dog")
task_2.mark_complete
task_list.add(task_1)
task_list.add(task_2)
task_list.complete # => [task_2]

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# TaskList
#1
task_list = TaskList.new
task_list.all # => []

#2
task_list = TaskList.new
task_list.complete # => []

#Task
#1
task = Task.new("Walk the dog")
task.title # => "Walk the dog"

#2
task = Task.new("Walk the dog")
task.complete? # => false

#3
task = Task.new("Walk the dog")
task.mark_complete
task.complete? # => true
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
