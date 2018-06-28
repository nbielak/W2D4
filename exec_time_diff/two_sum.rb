def bad_two_sum?(array, target_value)
  array.each_with_index do |el1, idx1|
    array.each_with_index do |el2, idx2|
      next if idx1 >= idx2
      return true if el1 + el2 == target_value
    end 
  end
  false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 10)