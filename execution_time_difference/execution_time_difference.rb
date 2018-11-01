def my_min(array)
  array.each do |el|
    return el if array.all? {|el2| el2 >= el}
  end
end

def my_min2(array)
  min = array.first
  array.each do |el|
    min = el if el < min
  end
  min
end

def largest_contiguous(array)
  res = []
  array.each_with_index do |el, i|
    array.each_with_index do |el2, j|
      res << array[i..j] unless array[i..j].empty?
    end
  end
  res.map! do |sub_arr|
    sub_arr.reduce(:+)
  end
  res.sort.last
end


def largest_contiguous2(array)
  largest_sum = array.shift #5
  sub_sum = largest_sum #5 -> #8

#[3,-7]


  array.each do |el|

    if sub_sum + el > 0
      sub_sum = sub_sum + el
      largest_sum = sub_sum if sub_sum > largest_sum
    elsif largest_sum < 0
      largest_sum = el if el > largest_sum
    else
      largest_sum = sub_sum if sub_sum > largest_sum
      sub_sum = 0
    end

  end
  sub_sum > largest_sum ? sub_sum : largest_sum
end

# p largest_contiguous2([5, 3, -7])
