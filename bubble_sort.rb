def bubble_sort(array)
  n = array.size
  loop do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
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
  pp array
end
