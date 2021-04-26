def bubble_sort(unsort_array)
  unsort_array_size = unsort_array.length
  return unsort_array if unsort_array.size <= 1

  loop do
    swap = false
    (unsort_array_size - 1).times do |i|
      next unless unsort_array[i] > unsort_array[i + 1]

      unsort_array [i], unsort_array[i + 1] = unsort_array[i + 1], unsort_array[i]
      swap = true
    end
    break unless swap
  end
  unsort_array
end
unsort_array = [75, 23, 68, 54, 3, 54, 93, 31, 18, 22]
p bubble_sort(unsort_array)
