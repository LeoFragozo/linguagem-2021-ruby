#todo debugar esse algortimo

def jump_search(arr, value)
  n = arr.size
  i = 0
  sqr = Math.sqrt n

  while arr[sqr] <= value && sqr < n
    i = sqr
    sqr += Math.sqrt n
    return 'Número encontrado no array' if sqr > n - 1
  end
  start = i

  while start < sqr
    return x if a[x] == value

    start += 1
  end
  -1
end

p jump_search([6, 14, 58, 93, 105], 23)
