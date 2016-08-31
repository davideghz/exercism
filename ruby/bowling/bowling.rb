class Game
  def initialize
    @rolls = []
  end

  def roll(roll)
    raise RuntimeError if roll < 0 || 10 < roll || game_done?
    @rolls << roll
    raise RuntimeError if frames[-1].reduce(&:+) > 10
  end

  def score
    raise RuntimeError unless game_done?

    1.upto(10).map(&method(:frame_score)).reduce(&:+)
  end

  private

  def game_done?
    frames.size == 10 && !spare?(10) && get_frame(10).size == 2 ||
    frames.size == 11 && spare?(10) ||
    frames.size == 11 && strike?(10) && get_frame(11).size == 2 ||
    frames.size == 12 && strike?(10) && strike?(11)
  end

  def frame_score(index)
    return 10 + next_rolls(index)[0, 2].reduce(&:+) if strike?(index)
    return 10 + next_rolls(index)[0] if spare?(index)

    get_frame(index).reduce(&:+)
  end

  def strike?(index)
    frame = get_frame(index)
    frame[0] == 10
  end

  def spare?(index)
    frame = get_frame(index)
    frame.size == 2 && frame.reduce(&:+) == 10
  end

  def next_rolls(index)
    frames[index..-1].flatten
  end

  def get_frame(index)
    frames[index - 1]
  end

  def frames
    result = []
    frame = []
    @rolls.each.with_index do |roll, index|
      frame << roll
      if roll == 10 || frame.size == 2 || index == @rolls.size - 1
        result << frame
        frame = []
      end
    end

    result
  end
end

@game = Game.new
[1,1,1,9,10,10,5,5].each do |pins|
  @game.roll pins
end

module BookKeeping
  VERSION = 1
end
