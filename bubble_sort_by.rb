class Array
    def bubble_sort_by
        n = self.length
        loop do
            swapped = false
            (n-1).times do |i|
                if yield (self[i] > self[i + 1]) > 0
                    self[i], self[i + 1] = self[i + 1], self[i]
                    swapped = true
                end
            end
            break if not swapped
        end
        self
    end
end

# sorted = bubble_sort_by(["hi","hello","hey"]) do |left,right|  
#     left.length - right.length
# end
# puts sorted
