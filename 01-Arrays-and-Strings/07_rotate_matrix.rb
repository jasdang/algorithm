def rotate_matrix(image)
  # TODO: given an image reporesented by an NxN matrix, where each pixel in the
  # image is 4 bytes, write a method to rotate the image by 90 degrees.
  # Can you do this in place?
  n = image.length - 1
  i = 0
  while i <= n - 1
    j = i
    while j <= n - i - 1
      temp = image[i][j]
      puts "Round #{i}.#{j}: temp = #{temp}"
      image[i][j] = image[n - j][i]
      image[n - j][i] = image[n - i][n - j]
      image[n - i][n - j] = image[j][n - i]
      image[j][n - i] = temp
      p image
      j += 1
    end
    i += 1
  end
  image
end

array_one = [["00", "01", "02", "03", "04", "05"],
             ["10", "11", "12", "13", "14", "15"],
             ["20", "21", "22", "23", "24", "25"],
             ["30", "31", "32", "33", "34", "35"],
             ["40", "41", "42", "43", "44", "45"],
             ["50", "51", "52", "53", "54", "55"]]

array_two = [["50", "40", "30", "20", "10", "00"],
             ["51", "41", "31", "21", "11", "01"],
             ["52", "42", "32", "22", "12", "02"],
             ["53", "43", "33", "23", "13", "03"],
             ["54", "44", "34", "24", "14", "04"],
             ["55", "45", "35", "25", "15", "05"]]

p rotate_matrix(array_one)
