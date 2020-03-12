require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end

  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    punct_sentences = []

    array_of_words = self.split()

    array_of_words.each do |word|
      if word.sentence? | word.question? | word.exclamation?
        punct_sentences << word
      end
    end
    punct_sentences.count
  end

end
