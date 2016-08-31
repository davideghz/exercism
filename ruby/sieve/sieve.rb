class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    (2..@max).to_a - (2..@max).flat_map { |i| multiples_of(i) }
  end

  private

  def multiples_of(number)
    ((number * 2)..@max).step(number).to_a
  end
end
