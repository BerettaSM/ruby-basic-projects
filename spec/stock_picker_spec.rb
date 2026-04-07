# frozen_string_literal: true

require_relative '../lib/stock_picker'

RSpec.describe '#stock_picker' do
  let(:prices1) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }
  let(:prices2) { [8, 5, 4, 3, 2, 8, 10, 29, 5] }
  let(:prices3) { [7, 9, 14, 9, 15, 8, 6, 8, 15] }

  it 'should handle case 1' do
    expect(stock_picker(prices1)).to eq [1, 4]
  end

  it 'should handle case 2' do
    expect(stock_picker(prices2)).to eq [4, 7]
  end

  it 'should handle case 3' do
    expect(stock_picker(prices3)).to eq [6, 8]
  end
end
