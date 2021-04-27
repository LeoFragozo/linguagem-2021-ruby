def get_miss_num(arr)
  s = arr.size
  result = (s + 1) * (s + 2) / 2
  arr_sum = arr.sum
  result - arr_sum
end
arr = [5, 6, 7, 8, 10]
missing = get_miss_num(arr)
puts missing.to_s
