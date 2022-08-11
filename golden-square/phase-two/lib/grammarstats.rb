class GrammarStats
    def initialize
      @no_of_true = 0
      @no_of_false = 0
    end
  
    def check(text)
        if text.empty? 
            fail "sentence not provided"
        elsif text[0] != text[0].upcase || !text.end_with?(".") && !text.end_with?("!") && !text.end_with?("?")
          @no_of_false = @no_of_false + 1  
          return false
        else
          @no_of_true = @no_of_true + 1
            return true
        end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      total_sentences_checked = @no_of_true + @no_of_false
      ((@no_of_true/total_sentences_checked.to_f) * 100).ceil
    end
  end