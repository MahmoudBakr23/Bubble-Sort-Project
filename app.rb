def bubble_sort(numbers)
  swap = true
  index = 0
  while swap
    swap = false
    while index < numbers.length - 1
      if numbers[index] > numbers[index + 1]
        swap = true
        sorted = numbers[index]
        numbers[index] = numbers[index + 1]
        numbers[index + 1] = sorted
      end
      index += 1
    end
    index = 0
  end
  numbers
end

def bubble_sort_by(arr)
  i = 0
  swap = true
  while swap
    swap = false
    while i < arr.length - 1
      if yield(arr[i], arr[i + 1]).positive?
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        swap = true
      end
      i += 1
    end
    i = 0
  end
  arr
end

sorted_by = bubble_sort_by(%w[hi hello hey yo]) do |left, right|
  left.length - right.length
end

puts bubble_sort([5, 4, 3, 2, 1])
puts sorted_by
