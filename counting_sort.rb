def count_sort(arr)
  count_arr = create_count_arr(arr)

  sort = Array.new(arr.size)

  arr.each do |item|
    sort[count_arr[item] - 1] = item
    count_arr[item] -= 1
  end

  sort
end

def create_count_arr(arr)
  count_arr = Array.new(arr.max + 1, 0)
  arr.each { |item| count_arr[item] += 1 }
  
  (1..(count_arr.size - 1)).each do |i|
    count_arr[i] += count_arr [i - 1]
  end

  count_arr
end

p count_sort([15, 25, 48, 33, 59, 82, 63, 76]).to_s
