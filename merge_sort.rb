def merge_sort(arr)
  if arr.size <= 1
    arr
  else
    middle = (arr.size / 2).floor
    left = merge_sort(arr[0..middle - 1])
    right = merge_sort(arr[middle..arr.size])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.size], right)
  else
    [right.first] + merge(left, right[1..right.size])
  end
end

p merge_sort([2,5,7,6,3,10,15,30,22,55,43])