# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
  dfs(board, 0, 0)
end

def dfs(board, x, y)
  return true if 9 == x

  next_y = y + 1
  next_x = x
  if 9 == next_y
    next_y = 0
    next_x += 1
  end

  return dfs(board, next_x, next_y) if "." != board[x][y]

  available(board, x, y).each do |num|
    board[x][y] = num
    return true if dfs(board, next_x, next_y)
    board[x][y] = '.'
  end
  return false
end

def available(board, x, y)
  rtn = ('1'..'9').to_a
  rtn -= board[x]
  rtn -= board.collect { |arr| arr[y] }

  top_x, top_y = x / 3 * 3, y / 3 * 3
  bottom_x, bottom_y = top_x + 2, top_y + 2
  for i in top_x..bottom_x
    for j in top_y..bottom_y
      rtn.delete(board[i][j])
    end
  end

  return rtn
end

board = 
  [
    ["5","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
  ]
board.each { |line| puts line.inspect }

puts '------'

solve_sudoku(board)
board.each { |line| puts line.inspect }