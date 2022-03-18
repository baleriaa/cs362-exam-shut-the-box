require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      tile_set = TileSet.new()
      expect(tile_set.length).to eq(9)
    end

    it 'returns an array of tiles of a specified length' do
      tile_set = TileSet.new(10)
      expect(tile_set.length).to eq(10)
    end

    # it 'returns an array of tiles whose values increase from 1, by 1' do
    #   tile_set = TileSet.new()
    #   tile_set.generate
    #   expect(tile_set)
    # end

  end

end
