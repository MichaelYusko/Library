require_relative 'library'
require_relative 'game'

LIBRARY = Library.new

def add_game(name, system = nil, year = nil, &block)
  game = Game.new(name)
  game.system(system) if system
  game.year(year) if year
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

def with_game(name, &block)
  game = LIBRARY.find_by_name(name)
  game.instance_eval(&block)
end

def with_games_tagged(tag, &block)
  games = LIBRARY.find_by_tag(tag)
  games.each do |game|
    game.instance_eval(&block)
  end
end