class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    if valid?
      @trinary.chars.reverse.each_with_index.inject(0) { |sum,(value,index)|
        sum + value.to_i * (3 ** index)
      }
    else
      return 0
    end
  end

  def valid?
    @trinary.gsub("\n",'').match(/^[0-2]+$/)
  end
end

p Trinary.new("Invalid201\nString").to_decimal

module BookKeeping
  VERSION = 1
end
