require 'pry'

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

    array = self.split(/[.!?]/)
    array.each do |phrase|
      if phrase.length == 0
        array.delete(phrase)
      end
    end
    array.count
  end	 

end 