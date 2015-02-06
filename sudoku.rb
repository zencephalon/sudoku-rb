class Sudoku
  def initialize(board_str)
    board_str.split.
  end
end

class Cell
  def initialize(num)
    @num = num == 0 ? nil : num
    @open = @num ? [] : (1..9).to_a
  end
end