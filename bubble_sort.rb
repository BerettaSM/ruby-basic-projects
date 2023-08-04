def bubble_sort arr
    (arr.length-1).downto 1 do |i|
        1.upto i do |j|
            if arr[j] < arr[j-1]
                arr[j],arr[j-1] = arr[j-1], arr[j]
            end
        end
    end
    arr
end

p bubble_sort([4,3,78,2,0,2])
