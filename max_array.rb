def max_array(arr, k)
  k.times do
    min, min_index = arr.each_with_index.min
    break if min.zero?

    arr[min_index] = -arr[min_index]
  end

  arr.sum
end

puts max_array([-3, 9, 3, 5, 2], 2)
