class Array
  def accumulate(&block)
    result = []
    self.each { |element| result << block.call(element) }
    result
  end
end


puts [1,2,3].accumulate { |e| e * e }
