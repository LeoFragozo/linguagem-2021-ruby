def counting_sort(arr = [5, 4, 3, 2, 1], min = 0, max = 10)
  return 'array inválido' if min > max

  number = max - min + 1
  count = Array.new(number,0)
  size = arr.size
  result = Array.new(size)

  for i in 0...size
    count[arr[i]-min]+=1
  end

for i in 1...number
  count[i]+=count[i-1]
end

for i in 0...size
  result[count[arr[i]-min]-1]=arr[i]
  count[arr[i]-min]-=1
end

for i in 0...size
  arr[i]=result[i]
end

return arr

end

p counting_sort()