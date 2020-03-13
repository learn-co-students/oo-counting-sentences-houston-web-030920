

class String
  def sentence?
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end

  def question?
     if self.end_with?("?")
      return true
    else 
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else 
      return false
    end
  end

  def count_sentences
  #  my_array = ["!", "?", "."]

   my_array = self.split(/[!.?]/).select {|string| string != ""}.length

  end
end