# Working: 13m29s
# Refactor:
class Bottles
  def initialize
  end

  def song
    verses(99, 0)
  end

  def verses(*args)
    if args.size == 1
      verse(args.first)
    elsif args.size == 2
      start, stop = args
      start.downto(stop).map { |n| verse(n) }.join("\n")
    end
  end

  def verse(n)
    if n == 0
      v = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    elsif n == 1
      v = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    elsif n == 2
      v = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
VERSE
    else
      v = <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
VERSE
    end
  end
end
