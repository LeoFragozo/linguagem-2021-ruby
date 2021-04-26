def linear_search(arr, value_search)
  arr.each.with_index do |element, index| #
    return 'Posição ' + index.to_s if element == value_search # se 3 = 3
  end
  'Número pesquisado não encontrado no array'
end

p linear_search([6, 14, 58, 93, 105], 58)
