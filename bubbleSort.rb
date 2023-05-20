def bubble_sort (messy_array)
    unsorted = messy_array.length
    loop do
        sorted = true
        unsorted -= 1
        messy_array.each_with_index do |num, ind|
            if ind == unsorted
                break
            end
            if num > messy_array[ind + 1]
                messy_array[ind], messy_array[ind + 1] = messy_array[ind + 1], messy_array[ind]
                sorted = false
            end
        end
        if sorted
            break messy_array
        end
    end
end

print bubble_sort([4,3,78,2,0,2])
# expected result => [0,2,2,3,4,78]