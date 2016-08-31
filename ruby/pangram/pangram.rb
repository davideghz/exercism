class Pangram

  def self.is_pangram?(str)
    letters = Hash.new(0)
    str.downcase.scan(/[a-z]/).each { |c| letters[c] += 1 }

    # puts letters.length
    # puts ('a'..'z').to_a.length
    return letters.length == ('a'..'z').to_a.length
  end

end

# Pangram.is_pangram?('the quick brown fox jumps over the lazy dog')

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
