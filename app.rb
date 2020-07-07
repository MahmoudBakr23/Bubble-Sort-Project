# frozen_string_literal: true

bubble_sort = [4, 3, 78, 2, 0, 2]

swap = true
index = 0
while swap
  swap = false
  while index < bubble_sort.length - 1
    if bubble_sort[index] > bubble_sort[index + 1]
      swap = true
      sorted = bubble_sort[index]
      bubble_sort[index] = bubble_sort[index + 1]
      bubble_sort[index + 1] = sorted
    end
    index += 1
  end
  index = 0
end

puts bubble_sort
