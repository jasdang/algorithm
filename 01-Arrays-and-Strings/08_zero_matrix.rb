def zero_matrix(matrix)
  # TODO: if an element in the MxN matrix is 0,
  # its entire row and column are set to 0
  row_ids = []
  col_ids = []
  matrix.each_with_index do |row, i|
    row. each_with_index do |val, j|
      if val.zero?
        row_ids << i
        col_ids << j
      end
    end
  end
  matrix.each_with_index do |row, i|
    if row_ids.include? i
      row.map! { |val| val = 0 }
    else
      col_ids.each { |j| row[j] = 0 }
    end
  end
  matrix
end

matrix = [[0, 1, 2, 3, 4, 5, 6, 7],
          [1, 1, 2, 0, 4, 5, 6, 7],
          [1, 1, 2, 3, 4, 5, 6, 7],
          [1, 1, 2, 0, 4, 5, 6, 7],
          [1, 1, 2, 3, 4, 5, 6, 7]]

p zero_matrix(matrix)
