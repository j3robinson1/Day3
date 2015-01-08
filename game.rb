puts "What is your name"
name = gets.chomp
puts "Your name is #{name}"
puts "Tic tac toe"
@moves
board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

# board[0][0] == 0 ? "" : "X"

def draw_board board, name
puts name
puts "#{draw_space(board[0][0])}|#{draw_space(board[0][1])}|#{draw_space(board[0][2])}"
puts '-----'
puts "#{draw_space(board[1][0])}|#{draw_space(board[1][1])}|#{draw_space(board[1][2])}"
puts '-----'
puts "#{draw_space(board[2][0])}|#{draw_space(board[2][1])}|#{draw_space(board[2][2])}"
end
# def move_taken next_move, taken_move
# 	move_taken = false
# 	taken_move.each do |space|
# 		if next_move == space
# 			move_taken = true
# 		end
# 	end
# 	return move_taken
# end
def draw_space board_space
	if board_space == 0
		' '
	elsif board_space == 1
		'X'
	elsif board_space == 2
		'0'
	end

end
def pick_location board, player
	puts "pick a location 1-9"
	location = gets.chomp.to_i
	# move_taken next_move, taken_move
	if location == 1
		board[0][0] =player
	elsif location == 2 
		board[0][1] =player
	elsif location == 3
		board[0][2] =player
	elsif location == 4
		board[1][0] =player
	elsif location == 5
		board[1][1] =player
	elsif location == 6
		board[1][2] =player
	elsif location == 7
		board[2][0] =player
	elsif location == 8
		board[2][1] =player
	elsif location == 9
		board[2][2] =player
	end
	# while move_taken next_move, taken_move
	# 	if move_taken next_move, taken_move
	# 		puts "#{name}, that move is already taken, Try again."
	# 		next_move = gets.chomp.to_i
	# 	end
	# 	if move_taken next_move, taken_move
	# 		puts "#{name}, please enter a number that is between 1-9"
	# 		next_move = gets.chomp.to_i
	# 	end
	# end
	# return(next_move)
end
while true
	player = 1
draw_board board, name
pick_location board, player
player = 2
draw_board board, name
pick_location board, player
end

