def jump_search(arr, value)
  n = arr.size # 9
  step = Math.sqrt(n) # 3

  prev = 0

  while arr[[step, n].min] < value # 3,9,min (3) < 105
    prev = step # prev = 3
    step += Math.sqrt(n) # step = 3 + 3 ->  6
    return -1 if prev >= n # 3 >= 9 (false)
  end

  while arr[prev] < value # 6 < 105
    prev += 1 #  0 += 1
    return -1 if prev == [step, n].min # retorna -1 se 125 == (3,9).min = (false)
  end

  if arr[prev] == value # se o arr[3] == 125
    return prev.to_i   # return 0_to_is
  end

  -1
end

arr = [6, 14, 58, 93, 105, 121, 138, 145, 153]
value = 105

result = jump_search(arr, value)

puts result.negative ? "Número '#{value}' Não encontrado no array" : "Número '#{value}' encontrado no index #{result}"
