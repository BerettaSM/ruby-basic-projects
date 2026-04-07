#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
def bubble_sort(array)
  copy = array.dup
  (copy.length - 1).downto(1) do |i|
    swap = false
    1.upto(i) do |j|
      if copy[j] < copy[j - 1]
        copy[j], copy[j - 1] = copy[j - 1], copy[j]
        swap = true
      end
    end
    break unless swap
  end
  copy
end
# rubocop: enable Metrics/MethodLength
