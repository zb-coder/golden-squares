# {{PROBLEM}} Reading Time Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_time = calculating_reading_time(text)

# text: a string with words (e.g. "Once upon a time")
# reading_time: an integer representing minutes

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
calculating_reading_time("") => 0

#2 
calculating_reading_time("One") => 1

#3
calculating_reading_time(TWO_HUNDRED_WORDS) => 1

#4
calculating_reading_time(THREE_HUNDRED_WORDS) => 2

#5
calculating_reading_time(FOUR_HUNDRED_WORDS) => 2

#6
calculating_reading_time(FIVE_HUNDRED_WORDS) => 3

# We are rounding up to the nearest minute

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

