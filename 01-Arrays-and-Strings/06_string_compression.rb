def string_compression(string)
  # TODO: perform basic string compression using the counts of
  # repeated characters (a-z A-Z)
  # case sensitive
  array = string.split(//)
  index = 1
  result = []
  count = 1
  while index <= array.length - 1
    if array[index] == array[index - 1]
      count += 1
    else
      result << [array[index - 1], count]
      count = 1
    end
    index += 1
  end
  result << [array.last, count]
  result.join.length >= string.length ? string : result.join
end

puts string_compression('aaaaaaadssccsddaaaaaa')
