# Working: 13m29s
# Refactor:
class Bottles

  def song
    verses(99, 0)
  end

  def verses(start, stop)
    start.downto(stop).map { |n| verse(n) }.join("\n")
  end

  def verse(n)
      v = <<-VERSE
#{n_bottles(n)} of beer on the wall, #{n_bottles(n).downcase} of beer.
#{what_to_do_next(n)}, #{n_bottles_remaining(n-1)} of beer on the wall.
VERSE
  end

  private
    def n_bottles_remaining(n)
      if n < 0
        "99 bottles"
      else
        "#{n_bottles(n).downcase}"
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

    def n_bottles(n)
      if n == 0
        "No more bottles"
      elsif n == 1
        "1 bottle"
      else
        "#{n} bottles"
      end
    end
end
