require 'byebug'

def first_anagram?(str1, str2)
  anagrams = str1.split("").permutation.to_a
  
  anagrams.map {|string| string.join("")}.include?(str2)
end

def second_anagram?(str1, str2)
  chars1 = str1.split("")
  chars2 = str2.split("")
  
  str1.split("").each_with_index do |el1, idx1|
    str2.split("").each_with_index do |el2, idx2|
      if el1 == el2
        chars1[idx1] = nil
        chars2[idx2] = nil
      end
    end
  end
  
  chars1.all? {|el| el.nil?} && chars2.all? {|el| el.nil?}
end

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  str1.chars.each do |c|
    hash1[c] += 1
  end
  
  str2.chars.each do |c|
    hash2[c] += 1
  end
  
  hash1 == hash2
end

p fourth_anagram?("sally", "ozmig")