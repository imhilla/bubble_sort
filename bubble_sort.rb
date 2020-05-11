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

