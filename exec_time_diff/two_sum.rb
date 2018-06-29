# n^2
def bad_two_sum?(array, target_value)
  array.each_with_index do |el1, idx1|
    array.each_with_index do |el2, idx2|
      next if idx1 >= idx2
      return true if el1 + el2 == target_value
    end 
  end
  false
end

def okay_two_sum?(array, target_value)
  sorted_arr = array.sort
  
  
end

def two_sum?(array, target_value)
  hash = Hash.new(false)
  
  array.each do |el|
    hash[el] = true
  end
  
  array.each_with_index do |el, idx|
    target = target_value - el
    if hash.has_key?(target)
      return true unless array.index(el) == idx
    end
  end
  
  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 12)