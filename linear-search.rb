def linear_search(arr, value_search)
  arr.each.with_index do |element, index|
    if element == value_search
      return "Posição " + index.to_s
    elsif element > value_search
      break
    end
  end
  "Número pesquisado não encontrado no array"
end

p linear_search([6, 14, 58, 93, 105], 93)
