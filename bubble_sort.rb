array = [1,2,5,3,4]

def bubble_sort(array)
  array_size = array.length
  return array if array.size <= 1

  loop do
    swap = false

    (array_size - 1).times do |i|
      if array[i] > array[i+1]
        array [i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end

    break unless swap
  end

  array
end
unsort_array = [75,23,68,54,03,54,93,31,18,22]
p bubble_sort(unsort_array)