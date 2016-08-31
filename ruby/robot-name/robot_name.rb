class Robot
  attr_reader :name

  def initialize
    first = self.inspect.to_s.upcase.gsub(/[^a-zA-Z]/, '').chars.last(2).join
    second = Time.now.to_f.to_s.chars.last(3).join
    @name = first + second
  end

  def reset
    initialize
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

p Robot.new.name
