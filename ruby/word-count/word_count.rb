class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    words = Hash.new(0)
    @text.downcase.scan(/\w+(?:'\w+)*/).each { |word| words[word] += 1 }
    return words
  end
end

module BookKeeping
  VERSION = 1
end
