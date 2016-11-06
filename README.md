# Library
Mini Test DSL for adding games to library

add to library
```
add_game 'Counter-Strike 1.0' do
   system 'Windows'
   year 1992
end
```

show info about game
```
with_game 'Counter-Strike 1.0' do
   print_details
end
```