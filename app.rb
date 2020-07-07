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

numbers = [4, 3, 78, 2, 0, 2]
puts bubble_sort(numbers)

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
  puts arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
