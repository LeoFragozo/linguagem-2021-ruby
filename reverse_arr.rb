def reverse_Arr (arr, n)

    size = arr.size
    newArr = []

    newArr << arr.pop(n)
    newArr << arr

    newArr.flatten!
  end

arr = [1,2,3,4,5,6,7,8,9,10]
n = 5

p reverse_Arr(arr, n)