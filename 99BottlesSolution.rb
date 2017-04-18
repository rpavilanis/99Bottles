class Bottle
  def initialize
    @num_bottles = 99
  end

  def number_of_items(num)
    @num_bottles = @num_bottles - num
  end

  def verse
    @verse = "#{@num_bottles} bottles of beer on the wall, #{@num_bottles} bottles of beer, take one down, pass it around, #{@num_bottles - 1} bottles of beer on the wall. "
  end

  def two_left
    @verse = "#{@num_bottles} bottle of beer on the wall, #{@num_bottles} bottle of beer, take one down, pass it around, #{@num_bottles - 1} bottle of beer on the wall. "
  end

  def one_left
     @verse = "#{@num_bottles} bottle of beer on the wall, #{@num_bottles} bottle of beer, take one down, pass it around, #{@num_bottles - 1} bottles of beer on the wall. "
  end

  def last_verse
    if @num_bottles == 0
      @verse = "No more bottles of beer on the wall, No more bottles of beer, Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def print_song
    until @num_bottles == -1
      if @num_bottles == 2
        print two_left
        number_of_items(1)
      elsif @num_bottles == 1
        print one_left
        number_of_items(1)
      elsif @num_bottles == 0
        print last_verse
        number_of_items(1)
      else
        print verse
        number_of_items(1)
      end
    end
  end
end

song = Bottle.new
print song.print_song
