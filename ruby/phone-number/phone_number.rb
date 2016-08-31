class PhoneNumber
  def initialize(input)
    @input = input
  end

  def to_s
    one, two, three = number.match(/^(^\d{3})(\d{3})(\d{4})/).captures
    return "(#{one}) #{two}-#{three}"
  end

  def number
    output = @input.scan(/[a-z]/)
    return '0000000000' if output.length > 0

    output = @input.scan(/(\d)/).join
    output = output.scan(/1?(\d{10})/).join if output.length == 11 && output[0] == '1'

    output.length == 10 ? output : '0000000000'
  end

  def area_code
    number.scan(/^\d{3}/).join
  end

end

number = PhoneNumber.new('5551234567')
puts number.to_s
