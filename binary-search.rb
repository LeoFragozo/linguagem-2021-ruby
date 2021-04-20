def binary_search(arr, value)
  limit_under = 0
  limit_over = arr.size - 1

  while limit_under <= limit_over

    middle = (limit_over + limit_under) / 2
    value_at_middle = arr[middle]

    if value == value_at_middle
      return 'Valor encontrado na posição ' + middle.to_s
    elsif value < value_at_middle
      limit_over = middle - 1
    elsif value > value_at_middle
      limit_under = middle + 1
    end
  end
  'Valor não enconrtado no array'
end

p binary_search([6, 14, 58, 93, 105], 12)
