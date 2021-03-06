def game_of_life(grid)
  grid.each_with_index.map do |line, idx_line|
    line.each_index.map do |i|
      prev = i == 0 ? 0 : line[i - 1] 
      nex = line[i + 1] || 0

      down = (grid[idx_line + 1]||[])[i] || 0
      up = idx_line == 0 ? 0 : grid[idx_line - 1][i]

      neigh = prev + nex + down + up

      neigh == 2 ? line[i] : (neigh == 3 ? 1 : 0)
    end
  end
end
