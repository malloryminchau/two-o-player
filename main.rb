require './player.rb'

play1 = Player.new('Player 1')
play2 = Player.new('Player 2')

game = Game.new(play1, play2)


game.turn