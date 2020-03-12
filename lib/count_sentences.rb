

class String

  def sentence?
    if self[-1] == '.'
      true
    else
      false
    end
  end

  def question?
    if self[-1] == '?'
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == '!'
      true
    else
      false
    end
  end

  def count_sentences
    a = self.split
    sentences_length = 0
    arr = [] 
    
    a.each do |word|

      if word.sentence? == false && word.question? == false && word.exclamation? == false
        arr.push(word)
      elsif word.sentence? == true
        arr.push(word)
        sentences_length += 1
        arr = []
      elsif word.question? == true
        arr.push(word)
        sentences_length += 1
        arr = []
      else word.exclamation? == true
        arr.push(word)
        sentences_length += 1
        arr = []
      end
    end
  sentences_length
  end
end

    
      #SO BEFORE I SLEEP IMMA WRITE THIS IDEA DOWN
    #START CHECKING EACH WORD IF ITS A SENTENCE QUESTION OR EXCLAMATION
    #IF ITS FALSE PUT IT INTO AN ARRAY WITH PUSH AND UNTIL YOU HIT A SENTENCE QUESTION OR EXCLAMTION
    #WHEN YOU HIT ONE, PUSH THAT WORD IN, CHECK THE ARR WITH JOIN TO SEE IF ITS A SENTENCE. if it is not then you can just skip it and renew the array

