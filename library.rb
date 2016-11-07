class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end

  def find_by_name(name)
    @games.detect { |game| game.name == name}
  end

  def find_by_tag(tag)
    @games.select { |game| game.tags.include?(tag) }
  end
end