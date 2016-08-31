class Grains
  @@board = {
    1 => 1
  }

  def self.square(n)
    (2..64).each_with_index { |t| @@board[t] = @@board[t-1]*2 }
    return @@board[n]
  end

  def self.total
    @@board.values.reduce(:+)
  end
end
