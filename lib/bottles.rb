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
      v = <<-VERSE
#{how_many_remaining_on_wall(n)} of beer on the wall, #{bottles_of_beer_description(n)} of beer.
#{what_to_do_next(n)}, #{final_part(n-1)}.
VERSE
  end

  private
    def final_part(n)
      if n < 0
        "99 bottles of beer on the wall"
      else
        "#{how_many_remaining_on_wall(n).downcase} of beer on the wall"
      end
    end

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
