require_relative 'distinct_integers'

describe 'distinct_integers' do
  context 'knows the index when the index-value pair exists' do
    it 'outputs index 2 when input array is [-8,0,2,5]' do
      expect(index_value_match([-8,0,2,5])).to eq 2
    end
  end

  context 'returns default return value when thne index-value pair does not exist' do

    it 'outputs -1 when the array is [-1,0,3,6]' do
      expect(index_value_match([-1,0,3,6])).to eq -1
    end
  end


end
