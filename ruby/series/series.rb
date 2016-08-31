class Series
  def initialize(input)
    @input = input
  end

  def slices(n)
    raise ArgumentError if n > @input.size

    @input.chars.map(&:to_i).each_cons(n).to_a
  end
end

series = Series.new('01234')
p series.slices(2)
