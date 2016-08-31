class Gigasecond
  def self.from(date)
    date + 10**9
  end
end

# to find my gigasecond birthday :-)
# a = Gigasecond.from(Time.utc(1986, 8, 1, 0, 0, 0))
# a = a.utc
# puts a

module BookKeeping
 VERSION = 3 # Where the version number matches the one in the test.
end
