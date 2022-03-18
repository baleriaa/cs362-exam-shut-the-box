require_relative 'tile'

class TileSet
  attr_reader :length

  def initialize(length = 9)
    @length = length
  end

  def self.generate(quantity = 9)
    (1..quantity).map { |n| Tile.new(n) }
  end

end
