class Sudoku
  def initialize(board_str)
    @board = board_str.split('').each_slice(9).map {|row| row.map {|c| Cell.new(c.to_i)} }
  end

  def to_s
    @board.map {|row| row.map(&:to_s).join(" ")}.join("\n")
  end

  def column(y, x)
    (0..8).map {|y| [y, x]}.each do |y, x|
      yield y, x
    end
  end

  def row(y, x)
    (0..8).map {|x| [y, x]}.each do |y, x|
      yield y, x
    end
  end

  def square(y, x)
    yc, xc = y / 3, x / 3
    (yc..(yc + 2)).each do |y|
      (xc..(xc + 2)).each do |x|
        yield y, x
      end
    end
  end

  def solve
    (0..8).each do |y|
      (0..8).each do |x|
        if @board[y][x].usable?
          
        end
      end
    end
  end
end

class Cell
  def initialize(num)
    @num = num == 0 ? nil : num
    @open = @num ? [] : (1..9).to_a
    @used = false
  end

  def to_s
    @num ? @num.to_s : '-'
  end
end