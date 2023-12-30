#!/usr/bin/env ruby


def bubble_sort array
  copy = array.dup

  for i in (copy.length-1).step(1, -1)
    swap = false
    for j in 1..i
      if copy[j] < copy[j-1]
        copy[j], copy[j-1] = copy[j-1], copy[j]
        swap = true
      end
    end
    break if !swap
  end

  copy
end

p bubble_sort([4,3,78,2,0,2])

