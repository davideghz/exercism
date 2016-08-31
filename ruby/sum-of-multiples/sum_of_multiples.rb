class SumOfMultiples
  def initialize(*args)
    @ary_args = args
  end

  def to(n)
    results = []

    @ary_args.each_with_index do |x, index|
      multiples = @ary_args[index]
      until multiples >= n do
        results << multiples if !results.include?(multiples)
        multiples = multiples + x
      end
      multiples = 0
    end

    results.empty? ? 0 : results.reduce(:+)
  end
end

SumOfMultiples.new(3, 5).to(10)
