class Array
  def keep
    self.each_with_object([]) { |element, memo| memo << element if yield(element) }
  end

  def discard(&block)
    result = []
    self.each { |element| result << element if !block.call(element) }
    result
  end
end

p [1, 2, 3].keep(&:odd?)
