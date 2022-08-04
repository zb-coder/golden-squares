def contains_todo(text)
    
   fail "Not a task" if text.empty?

   if text.include?('#TODO')
      return true
   else
      return false
   end
end