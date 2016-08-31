class RomanNumeral
  MAPPING = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
  }

  def self.from_arabic(n)
    new(n).convert
  end

  def initialize(n)
    @n = n
  end

  def convert
    roman = ''

    while @n > 0
      MAPPING.each do |n, subst|
        # if number contains at least one of n
        if @n / n >= 1
          # push corresponding symbol to result
          roman << subst
          @n -= n
          # break from each and start it anew
          # so that the largest numbers are checked first again.
          break
        end
      end
    end

    roman
  end
end

class Fixnum
  def to_roman
    RomanNumeral.from_arabic(self)
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end


p 2339.to_roman
