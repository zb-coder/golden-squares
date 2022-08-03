def check_grammar(text)

    if text.empty?
        return fail "Not a sentence"
    elsif text[0] != text[0].upcase
        return false
    else 
        return true
    end


end