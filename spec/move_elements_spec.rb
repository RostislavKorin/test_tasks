require 'rspec'
require 'move_elements'

	describe 'move' do
		it 'move_elements' do
			expect(MoveElements.move_elements([1, 2, 5, 1, 5])).to eq([5, 2, 1, 5, 1])
      expect(MoveElements.move_elements([0, 12, 3, 2])).to eq([12, 0, 3, 2])
      expect(MoveElements.move_elements([0])).to eq([0])
      # expect(MoveElements.move_elements([12, 0])).to eq([0, 12])
		end
	end
