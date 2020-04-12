def one_away(first, second)
  # three types of edit: insert, remove or replace a character
  # TODO: check if the given 2 strings are one or zero edit away
  length_difference = first.length - second.length
  return false if length_difference.abs > 1

  first_array = first.split(//)
  second_array = second.split(//)
  if length_difference.zero?
    char_difference = compare_char(first_array, second_array)
  else
    make_same_length(first_array, second_array)
    char_difference = compare_char(first_array, second_array) + 1
  end
  char_difference <= 1
end

def make_same_length(first_array, second_array)
  if first_array.length > second_array.length
    long_array = first_array
    short_array = second_array
  else
    long_array = second_array
    short_array = first_array
  end

  long_array.each_with_index do |char, index|
    if char != short_array[index]
      long_array.delete_at(index)
      break
    end
  end
end

def compare_char(first_array, second_array)
  # first_array and second_array same length
  char_difference = 0
  first_array.each_with_index do |char, index|
    char_difference += 1 if char != second_array[index]
  end
  char_difference
end

puts one_away('apple', 'aple')
puts one_away('pale', 'ble')
puts one_away('pale', 'paale')
