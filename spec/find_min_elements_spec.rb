require 'rspec'
require 'find_min_elements'

	describe 'find' do
		it 'find_min_elements' do
			expect(FindMinElements.find_min_elements([1, 2, 5, 1, 5])).to eq([0, 3])
      expect(FindMinElements.find_min_elements([0, 12, 3, 2])).to eq([0, 3])
      expect(FindMinElements.find_min_elements([10, 0, 3, 2, 1, 10])).to eq([1, 4])
      expect(FindMinElements.find_min_elements([10, 0, 0, 0, 1, 10])).to eq([1, 2])
      expect(FindMinElements.find_min_elements([0, 10, 11, 11, 11])).to eq([0, 1])
      expect(FindMinElements.find_min_elements([10, 11, 11, 11, 10])).to eq([0, 4])
      expect(FindMinElements.find_min_elements([0])).to eq([0])
      expect(FindMinElements.find_min_elements([12, 0])).to eq([0, 1])
		end
	end
