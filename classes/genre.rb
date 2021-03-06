require_relative '../item'
class Genre
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
  end

  def add_genre(item)
    @items.push(item)
    item.genre = self
  end
end
