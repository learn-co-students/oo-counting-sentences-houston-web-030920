# require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    delimeters = ["!", ".", "?"]
    a = self.split(Regexp.union(delimeters))
    b = a.reject(&:empty?)
    b.count
  end
end
