class Sudoku
  def initialize(board_str)

  end
end

class Cell
  def initialize(num = nil)
    @num = num
    @open = @num ? [] : (1..9).to_a
  end
end