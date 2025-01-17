require_relative '../lib/box'

describe 'A box' do

  box = Box.new

  describe 'attributes' do
    it 'has tiles' do
      box = Box.new
      expect(box).to respond_to(:tiles)
    end
  end

  describe 'creation' do
    context 'by default' do
      it 'will initialize an array of tiles' do
        
        box = Box.new()
        expect(box).to respond_to(:tiles)
      end
    end
    context 'with a specific array of tiles' do
      it 'will retain the tiles passed its constructor' do
        box = Box.new(10)
        expect(box.tiles).to eq(10)
      end
    end
  end

  describe '#tiles_remaining?' do
    it 'returns true when at least one tile is up' do
      box = Box.new()
      box.tiles_remaining?
      expect(box.tiles_remaining?).to eq(true)
    end
    # it 'returns false when none of the tiles are up' do
    #   box = Box.new()
    #   box.flip(9)
    #   expect(box.tiles_remaining?).to eq(false)
    # end
  end

  describe '#no_tiles_remaining?' do
    # it 'returns true when none of the tiles are up' do
    #   box = Box.new
    #   box.flip(1)
    #   box.flip(2)
    #   box.flip(3)
    #   box.flip(4)
    #   box.flip(5)
    #   box.flip(6)
    #   box.flip(7)
    #   box.flip(8)
    #   box.flip(9)
    #   box.no_tiles_remaining?
    #   expect(box.no_tiles_remaining?).to eq(true)

    # end
    it 'returns false when any tile is up' do
      expect(box.no_tiles_remaining?).to eq(false)
    end
  end

  describe '#shut?' do
    # it 'is true when there are no tiles remaining' do
    #   box.flip(1)
    #   box.flip(2)
    #   box.flip(3)
    #   box.flip(4)
    #   box.flip(5)
    #   box.flip(6)
    #   box.flip(7)
    #   box.flip(8)
    #   box.flip(9)
    #   expect(box.shut?).to eq(true)
    # end
    it 'is false when there are tiles remaining' do
      expect(box.shut?).to eq(false)
    end
  end

  describe '#total_value_of_remaining_tiles' do
    it 'is the sum of the values of all the tiles that are still up' do
      expect(box.total_value_of_remaining_tiles).to eq(45)
    end
  end

  # describe '#flip' do
  #   it 'flips each tile whose value matches any of the tile values it receives' do
  #     box.flip(9)
  #     expect(box.tile_values)
  #   end
  #   it 'does not flip any tile whose value does not match any of the tile values it receives' do
  #     skip
  #   end
  # end

  describe '#to_s string representation' do
    # Given a box with the tiles that have values 1, 2, 3, 4,
    # And tile 2 is down,
    # The string representation is [1][ ][3][4].
    it "is each tile value in brackets with blanks for tiles that are down" do
      skip
    end
  end
end
