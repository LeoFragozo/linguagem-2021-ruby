def min_sum (arr)
  min_val = arr.min

  min_val * (arr.size - 1)
end

puts min_sum ([5,6,3,4])