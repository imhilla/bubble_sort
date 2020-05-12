class Array
  def bubble_sort
    n = self.length
    loop do
      swapped = false
      (n - 1).times do |i|
        if self[i] > self[i + 1]
          self[i], self[i + 1] = self[i + 1], self[i]
          swapped = true
        end
      end
      break unless swapped
    end
    self
  end
end

arr = [5, 7, 4, 9, 2, 4, 5]
puts arr.bubble_sort

def bubble_sort_by(array)
  n = array.length
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
