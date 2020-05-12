def bubble_sort(array)
  loop do
    swapped = false
    array.each_with_index do |_val, index|
      next if index >= array.length - 1

      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    break unless swapped
  end
  pp array
end

def bubble_sort_by(array)
  n = array.size
  loop do
    swapped = false
    (n - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

puts bubble_sort([4, 3, 7, 8, 2, 0, 2])

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.size - right.size }
