def palindrome_permutation(string)
  # TO DO: check if the given string is a permutation of a palidrome
  # ignore whitespace
  # case insensitive
  string.gsub!(' ', '')
  string.downcase!
  char_array = []
  s_array_ord = string.split(//).map(&:ord)
  s_array_ord.each do |char|
    char_array[char] = char_array[char].nil? ? 1 : 1 - char_array[char]
  end
  char_array.sum(&:to_i) <= 1
end

puts palindrome_permutation('ta%Co ca%t')
