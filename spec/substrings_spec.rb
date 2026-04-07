# frozen_string_literal: true

require_relative '../lib/substrings'

RSpec.describe '#substrings' do
  let(:dictionary) { %w[below down go going horn how howdy it i low own part partner sit] }
  let(:simple_phrase) { 'below' }
  let(:complex_phrase) { "Howdy partner, sit down! How's it going?" }

  it 'should handle a simple phrase' do
    expect(substrings(simple_phrase, dictionary)).to eq('below' => 1, 'low' => 1)
  end

  it 'should handle a complex phrase' do
    expect(substrings(complex_phrase, dictionary)).to eq('how' => 2, 'howdy' => 1, 'part' => 1,
                                                         'partner' => 1, 'it' => 2, 'i' => 3,
                                                         'sit' => 1, 'down' => 1, 'own' => 1,
                                                         'go' => 1, 'going' => 1)
  end
end

