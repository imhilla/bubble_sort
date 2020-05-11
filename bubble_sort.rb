def bubble_sort(arr)
    i = 0
    n = arr.length
    swapped = false
    while i < n-1
        if arr[i] > arr[i + 1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            swapped = true
        else
            i += 1
        end
        break if swapped == false
    end
    
    p arr
end

bubble_sort([1,5,7,2,3])

#bubble_sort.rb
class Array
    def bubble_sort
        n = self.length
        loop do
            swapped = false
            (n-1).times do |i|
                if self[i] > self[i+1]
                    self[i], self[i+1] = self[i+1], self[i]
                    swapped = true
                end
            end
            break if not swapped
        end
        self
    end
end

arr = [5, 7, 4, 9, 2, 4, 5]
arr.bubble_sort

