def slow_min(array)
  
  array.each do |el1|
    return el1 if array.all? {|el2| el1 <= el2}
    array.each do |el2|
      break if el1 > el2
    end
  end
end

def my_min(array)
  min = array.shift
  array.each do |el|
    min = el if el < min
  end
  min
end


def slow_sub_sum(array)
  sub_sets = sub_sets(array)
  sums = []
  
  sub_sets.each do |sub|
    sums << sub.reduce(:+)
  end
  
  return sums.max
  
end

def sub_sets(array)
  sub_sets = []
  i = 0
  
  while i < array.length
    j = i
    
    while j < array.length
      sub_sets << array[i..j]
      j += 1
    end
    
    i += 1
  end
  
  return sub_sets
end

def sub_sum(array)
  max = array.shift
  so_far = max
  
  array.each do |el|
    max = (el > max + el) ? el : max + el
    so_far = (so_far > max) ? so_far : max
  end
  
  so_far
  # max = array.max
  # 
  # array.each_with_index do |el, idx|
  #   curr_sum = max + el
  #   max += curr_sum if curr_sum > max 
  # end
  # end
end