class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna)
    return '' if invalid?(dna)
    dna.chars.map { |c| DNA_TO_RNA[c] }.join
  end

  private

  def self.invalid?(dna)
    (dna.chars - DNA_TO_RNA.keys).any?
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
