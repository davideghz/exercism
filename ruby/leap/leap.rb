class Year
  def self.leap?(year)
    year % 4 == 0 &&
    year % 100 != 0 ||
    year % 400 == 0
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

p Year.leap?(1996)
