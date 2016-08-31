class Raindrops

  require 'prime'

  def self.convert(n)
    output = ''
    Prime.prime_division(n).flat_map{ |factor, power| factor }.each do |p|
      output << "Pling" if p == 3
      output << "Plang" if p == 5
      output << "Plong" if p == 7
    end
    output == '' ? n.to_s : output
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
