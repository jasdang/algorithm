def rotate_string(str_one, str_two)
  # TODO: to check if one string is a substring of the other
  # "waterbottle" -- "erbottlewat"
  # 'aabbaba' -- 'babaaab'
  # 'aabbaba' -- 'babaaabbabaaab'
  #
  s1_array = str_one.split(//)
  length = s1_array.length
  s2_array = str_two.split(//)
  return false if s2_array.length != length

  double_array = s2_array * 2
  double_array.each_with_index do |_char, index|
    return true if double_array.slice(index, length) == s1_array
  end
  false
end

puts rotate_string('asb', 'sba')
