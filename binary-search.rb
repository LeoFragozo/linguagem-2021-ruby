def binary_search(arr, value)
  limit_under = 0
  limit_over = arr.size - 1

  while limit_under <= # limit_over 0 <= 6

    middle = (limit_over + limit_under) / 2 # middle = (6 + 0) / 2 = 3  
    value_at_middle = arr[middle] # value_at_middle = arr [3] = 58

    if value == value_at_middle
      return 'Valor encontrado na posição ' + middle.to_s
    elsif value < value_at_middle
      limit_over = middle - 1 # se 57 for menor que 58 limit over =  3 = 1 = 2
    elsif value > value_at_middle
      limit_under = middle + 1 # se 59 for maior que 59 limit under = 3 + 1 = 4
    end
  end
  'Valor não enconrtado no array'
end

p binary_search([6, 14, 58, 93, 105], 12)
