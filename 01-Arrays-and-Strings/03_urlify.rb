# frozen_string_literal: true

def urlify(string)
  # To replace all spaces in a string with %20
  s_array = string.split(//)
  space_count = 0
  s_array.each do |char|
    space_count += 1 if char == ' '
  end
  index_after = string.length + space_count * 2 - 1
  index_before = string.length - 1
  while index_before >= 0
    if s_array[index_before] == ' '
      s_array[index_after] = '0'
      s_array[index_after - 1] = '2'
      s_array[index_after - 2] = '%'
      index_after -= 3
    else
      s_array[index_after] = s_array[index_before]
      index_after -= 1
    end
    index_before -= 1
  end
  s_array.join
end

puts urlify('hello Jasmine hi')
