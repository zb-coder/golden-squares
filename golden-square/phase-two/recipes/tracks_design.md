# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Tracks

    def initialize
        #...
    end

    def add(track) # track is a string that represents the title of a song
    # no return value
    end

    def list
    # Throws an exception if no track is added
    # Otherwise returns a list of tracks
    end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
tracks = Tracks.new
tracks.add("") #=> []

# 2
tracks = Tracks.new
tracks.add("Three little birds")
tracks.list #=> ["Three little birds"] 

# 3
tracks = Tracks.new
tracks.add("Three little birds")
tracks.add("Stayin' Alive")
tracks.list #=> ["Three Little Birds, Stayin' Alive"]

# 4 - No duplicates
tracks = Tracks.new
tracks.add("Three little birds")
tracks.add("Three little birds")
tracks.list #=> ["Three little birds"] 
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
