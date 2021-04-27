def jump_search (array, num)
  size = array.length
  step = Math.sqrt(size).floor

  prev = 0

  while array[([step,size].min)-1] < num do
    prev = step

    step += Math.sqrt(size).floor

    return -1 if prev >= size
  end

  while array[prev] < num do
    prev += 1

    return -1 if prev == [step, size].min
  end

  if array[prev] == num
    return prev.to_i
  end

  return -1
end


arr = [6, 14, 58, 93, 105, 121, 138, 145]
value = 156

puts "Iniciando"

result = jump_search(arr, value)
if result <= -1
  puts "Número '#{value}' Não encontrado no array"
else
  puts "Número '#{value}' encontrado no index #{result}"
end
