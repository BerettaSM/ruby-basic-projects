# frozen_string_literal: true

require_relative '../lib/bubble_sort'

# rubocop: disable Metrics/BlockLength
RSpec.describe '#bubble_sort' do
  let(:random) { [[4, 3, 78, 1, 0, 2], [0, 1, 2, 3, 4, 78]] }
  let(:ordered) { [[0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5]] }
  let(:desc) { [[5, 4, 3, 2, 1, 0], [0, 1, 2, 3, 4, 5]] }
  let(:with_negatives) { [[4, -1, 2, 10, -17, 0], [-17, -1, 0, 2, 4, 10]] }
  let(:empty) { [[], []] }
  let(:single) { [[1], [1]] }

  it 'should order a random array' do
    arr, expected = random
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end

  it 'should not modify an already ordered array' do
    arr, expected = ordered
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end

  it 'should order a desc array in asc order' do
    arr, expected = desc
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end

  it 'should order an array with negative values' do
    arr, expected = with_negatives
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end

  it 'should return an empty arr when given an empty arr' do
    arr, expected = empty
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end

  it 'should return an arr with one element when given an arr with one element' do
    arr, expected = single
    actual = bubble_sort(arr)
    expect(actual).to eq expected
  end
end
# rubocop: enable Metrics/BlockLength
