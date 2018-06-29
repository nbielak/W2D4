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

def okay_two_sum?(array, target_value)
  max = array.shift
  so_far = max
  
  array.each do |el|
    max = (target_value - el > target_value - max + el ) ? el : max + el
    so_far = (so_far > max) ? so_far : max
  end
  
  so_far
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 10)