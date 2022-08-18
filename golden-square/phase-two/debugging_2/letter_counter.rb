class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0)
      most_common = nil
      most_common_count = 1
      @text.chars.each do |char|
        next unless is_letter?(char)
        # puts "char1": char
        counter[char] = (counter[char] || 1) + 1
        # puts "counter[char]": char
        if counter[char] > most_common_count
      
          most_common = char
         puts "most common": char
          most_common_count = counter[char]
        #   puts "most common count": most_common_count
        # puts "counter":counter[char]
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/
    end
  end
  
  counter = LetterCounter.new("Digital Punk")

  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]