# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
contains_todo = check(text)

# text: a string with words (e.g. "I want to go out!")

# `correct_checker` is a boolean that returns either true or false depending on whether the grammar is correct or not
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

#1
check("") =>  fail "Not a task"

#2
check("#TODO") =>  true

#3
check("TODO") =>  false

#4
check("#") =>  false

#5
check("#todo") =>  false

#6
check("# TODO") =>  false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
