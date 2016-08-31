class BeerSong
  def verse(num)
    start = "#{pluralize(num).capitalize} of beer on the wall, #{pluralize(num)} of beer.\n"
    return start + "Take #{take(num)} down and pass it around, #{pluralize(num-1)} of beer on the wall.\n" if num > 0
    return start + "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if num == 0
  end

  def verses(start, finish)
    song = ""
    start.downto(finish) do |num|
      song = song + verse(num)
      song = song + "\n" if num != finish
    end

    song
  end

  def lyrics
    verses(99, 0)
  end

  def pluralize(n)
    return "#{n} bottles" if n > 1
    return "#{n} bottle" if n == 1
    return "no more bottles"
  end

  def take(n)
    return "one" if n > 1
    return "it"
  end
end

module BookKeeping
  VERSION = 2
end


puts BeerSong.new.verses(99, 98)
