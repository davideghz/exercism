class Acronym
  def self.abbreviate(text)
    ary = clean(text).split(' ')
    result = ary.inject(''){ |result, i| result << i[0].upcase }
  end

  private

  def self.clean(text)
    text.gsub(', ', ' ').gsub('-', ' ')
  end
end
