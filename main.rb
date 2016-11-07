require_relative 'game_dsl'

add_game('Fifa', 'PC', 1991) { sport }
add_game('Counter-Strike 1.0', 'PC', 1987) { action }

with_games_tagged 'action' do
  print_details
end

with_game 'Fifa' do
  print_details
end
