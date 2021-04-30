def binary_search(arr, value)
  limit_under = 0
  limit_over = arr.size - 1

  while limit_under <= limit_over
    middle_point = (limit_over + limit_under) / 2
    value_at_middle_point = arr[middle_point]

    if value == value_at_middle_point
      return 'Valor encontrado na posição ' + middle_point.to_s
    elsif value < value_at_middle_point
      limit_over = middle_point - 1
    elsif value > value_at_middle_point
      limit_under = middle_point + 1
    end
  end
  'Valor não encontrado no array'
end

arr = [6, 14, 58, 93, 105]
p binary_search(arr, 22)
