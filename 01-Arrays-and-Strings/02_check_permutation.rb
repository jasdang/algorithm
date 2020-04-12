# frozen_string_literal: true

def check_permutation(string_a, string_b)
  # Given two strings, write a method to decide if one is
  # a permutation of the other
  return false unless string_a.length == string_b.length

  array_a = string_a.split(//)
  array_b = string_b.split(//)
  a_hash = {}
  array_a.each do |char|
    if a_hash[char]
      a_hash[char] += 1
    else
      a_hash[char] = 1
    end
  end
  array_b.each do |char|
    return false unless a_hash[char]

    a_hash[char] -= 1
  end
  a_hash.values.each do |v|
    return false if v != 0
  end
  true
end

puts "abc & ba: #{check_permutation('abc', 'ba')}"
puts "abc & bca: #{check_permutation('abc', 'abc')}"
puts "Abc & bca: #{check_permutation('Abc', 'abc')}"
puts "ab c & b ca: #{check_permutation('ab c', 'b ca')}"
