class GrammarStats
    def initialize
      # ...
    end
  
    def check(text)
        if text.empty? 
            fail "sentence not provided"
        elsif text[0] != text[0].upcase || !text.end_with?(".") && !text.end_with?("!") && !text.end_with?("?")
            return false
        else
            return true
        end
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end