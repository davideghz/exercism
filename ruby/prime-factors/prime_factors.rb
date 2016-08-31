class PrimeFactors
  def self.for(n)
    factors_list = []

    until n == 1
      factors_list << (2..n).find { |divisor| n.modulo(divisor).zero? }
      n = n / factors_list.last
    end

    return factors_list
  end
end

p PrimeFactors.for(27)
