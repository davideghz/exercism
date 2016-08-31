class Squares

  def initialize(n)
    @n = n
  end

  def square_of_sum
    (0..@n).reduce(:+)**2
  end

  def sum_of_squares
    (0..@n).inject{ |sum, n| sum + n*n }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
