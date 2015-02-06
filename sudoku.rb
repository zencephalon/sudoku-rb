class Sudoku
  def initialize(board_str)
    @board = board_str.split('').each_slice(9).map {|row| row.map {|c| Cell.new(c.to_i)} }
  end

  def to_s
    @board.map {|row| row.map(&:to_s).join(" ")}.join("\n")
  end

  def column(y, x)

  end

  def row(y, x)
  end

  def square(y, x)
  end
end

class Cell
  def initialize(num)
    @num = num == 0 ? nil : num
    @open = @num ? [] : (1..9).to_a
  end

  def to_s
    @num ? @num.to_s : '-'
  end
end