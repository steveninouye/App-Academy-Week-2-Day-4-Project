require 'set'

def two_sum?(arr, target_sum)
  s = Set.new
  arr.each do |el|
    return true if s.include?(target_sum - el)
    s.add(el)
  end
  false
end


def bad_two_sum?(arr, target_sum)
  arr.each do |el1|
    arr.each do |el2|
      next if el1 == el2
      return true if el1 + el2 == target_sum
    end
  end
  false
end

#arr = [0,1,5,7]
#target  = 6
def okay_two_sum?(arr, target_sum)
  until arr.empty?
    num = arr.shift
    while arr[0] && arr[-1] + num >= target_sum
      return true if num + arr[-1] == target_sum
      arr.pop
    end
  end

  false
end


p two_sum?([0,1,5, 6,7], 11)
