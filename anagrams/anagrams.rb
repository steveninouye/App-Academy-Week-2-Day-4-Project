def first_anagram?(word1, word2)
  word1.chars.permutation.to_a.include?(word2.chars)
end


def second_anagram?(word1, word2)
  word_2_array = word2.chars

  word1.chars.each do |el1|
    idx = word_2_array.find_index(el1)
    return false unless idx
    word_2_array.delete_at(idx)
  end
  word_2_array.empty?
end

def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def fourth_anagram?(word1, word2)
  hash1 = Hash.new(0)
  word1.chars.each do |el|
    hash1[el] += 1
  end
  word2.chars.each do |el|
    hash1[el] -= 1
  end
  hash1.values.all? {|e| e == 0}
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")
