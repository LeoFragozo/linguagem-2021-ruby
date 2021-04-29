def select_sort(arr)
  n = arr.size - 1
  i = 0

  while i <= n - 1
    smallest = 1
    j = i + 1
    while j <= n
      smallest = j if arr[j] < arr[smallest]
      j += 1
    end
    arr[i], arr[smallest] = arr[smallest], arr[i] if i != smallest
    i += 1
  end
  arr
end

arr_split = [23, 25, 22, 19, 5, 39]
p select_sort(arr_split)
