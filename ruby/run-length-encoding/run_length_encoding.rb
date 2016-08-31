class RunLengthEncoding
  def self.encode(input)
    ary = input.split ''

    times = 1
    output = ''

    ary.each_with_index do |element, index|
      if element == ary[index+1]
        times += 1
      else
        output << times.to_s if times != 1
        output << element.to_s
        times = 1
      end
    end

    output
  end

  def self.decode(input)
    ary = input.scan(/\d+|./)

    output = ''

    ary.each_with_index do |element, index|
      if /\d+/.match(element)
        output << ary[index+1] * ( element.to_i - 1 )
      else
        output << element
      end
    end

    output
  end
end

module BookKeeping
  VERSION = 2
end

puts RunLengthEncoding.encode('ABBBCCCC')
puts RunLengthEncoding.encode('⏰⚽⚽⚽⭐⭐⏰')
puts RunLengthEncoding.decode('3A')
