class Binary
  def initialize(input)
    raise ArgumentError unless input.match(/^[01]+$/)
    @input = input
  end

  def to_decimal
    i = @input.length
    output = 0

    @input.chars.each do |n|
      i = i-1
      output = output + n.to_i * (2**(i))
    end

    output
  end
end

module BookKeeping
  VERSION = 2
end
