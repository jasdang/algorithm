# frozen_string_literal: true

# Implement an algorithm to determine if a string has all unique characters.
# Case sensitive
def unique?(string)
  return false if string.length > 128

  s_array = string.split(//)
  s_hash = {}
  s_array.each do |letter|
    return false if s_hash[letter]

    s_hash[letter] = 1
  end
  true
end

puts "godg:#{unique?('godg')}"
puts "Ggod:#{unique?('Ggod')}"
puts "g ed :#{unique?('g ed ')}"
