# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
correct_grammar = check_grammar(text)

# text: a string with words (e.g. "I want to go out!")

# `correct_checker` is a boolean that returns either true or false depending on whether the grammar is correct or not
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

#1
check_grammar("") =>  fail "Not a sentence"

#2
check_grammar("Hi, I am 20.") =>  true

#3
check_grammar("Hi, I am 20") =>  false

#4
check_grammar("hi, I am 20") =>  false

#5
check_grammar("HI, I am 20.") =>  true

#6
check_grammar("Hi, I am 20!") =>  true

#7
check_grammar("Hi, I am 20?") =>  true

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
