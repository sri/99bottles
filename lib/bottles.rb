# Working: 13m29s
# Refactor:
class Bottles

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
#{how_many_remaining_on_wall(n)} of beer on the wall, #{bottles_of_beer_description(n)} of beer.
#{what_to_do_next(n)}, 99 bottles of beer on the wall.
VERSE
    elsif n == 1
      v = <<-VERSE
#{how_many_remaining_on_wall(n)} of beer on the wall, #{bottles_of_beer_description(n)} of beer.
#{what_to_do_next(n)}, no more bottles of beer on the wall.
VERSE
    elsif n == 2
      v = <<-VERSE
#{how_many_remaining_on_wall(n)} of beer on the wall, #{bottles_of_beer_description(n)} of beer.
#{what_to_do_next(n)}, 1 bottle of beer on the wall.
VERSE
    else
      v = <<-VERSE
#{how_many_remaining_on_wall(n)} of beer on the wall, #{bottles_of_beer_description(n)} of beer.
#{what_to_do_next(n)}, #{n-1} bottles of beer on the wall.
VERSE
    end
  end

  private
    def what_to_do_next(n)
      if n == 0
        "Go to the store and buy some more"
      elsif n == 1
        "Take it down and pass it around"
      else
        "Take one down and pass it around"
      end
    end

    def how_many_remaining_on_wall(n)
      if n == 0
        "No more bottles"
      elsif n == 1
        "1 bottle"
      else
        "#{n} bottles"
      end
    end

    def bottles_of_beer_description(n)
      if n == 0
        "no more bottles"
      elsif n == 1
        "1 bottle"
      else
        "#{n} bottles"
      end
    end
end
