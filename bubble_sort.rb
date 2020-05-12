class Array
  def bubble_sort
    n = self.size
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

bubble_sort_by(%w[hi hello]) do |left, right|
  left.length - right.length
end
