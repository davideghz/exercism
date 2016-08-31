module BookKeeping
 VERSION = 3
end

class Hamming
  def self.compute(one, two)

    raise ArgumentError unless one.length == two.length

    one.chars.each_with_index.count do |c, index|
      c != two[index]
    end

  end
end
