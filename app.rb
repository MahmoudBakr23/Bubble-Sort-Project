# frozen_string_literal: true
=begin
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
  return numbers
end

numbers = [4, 3, 78, 2, 0, 2]
puts bubble_sort(numbers)
=end

def bubble_sort_by(numbers)
  swap = true
  index = 0
  while swap
    swap = false
    while index < numbers.length - 1
      next unless (yield numbers[index], numbers[index + 1]).positive?
      swap = true
      sorted = numbers[index]
      numbers[index] = numbers[index + 1]
      numbers[index + 1] = sorted
      index += 1
    end
    index = 0
  end
  return numbers
end

numbers = [4,2,3,7,6]
bsort_by = bubble_sort_by(numbers) do |left, right|
  left - right
end

puts bsort_by