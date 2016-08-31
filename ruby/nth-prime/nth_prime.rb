class Prime
  def self.nth(num)
    raise(ArgumentError, "Zero is not ok") unless num != 0

    list = [2]
    check = 2

    while list.length < num do
      if list.any? { |p| check % p == 0 }
        # how can avoid this? :)
      else
        list << check
      end
      check += 1
    end

    return list.last
  end
end
