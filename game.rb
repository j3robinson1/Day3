puts "What is your name"
name = gets.chomp
puts "Your name is #{name}"
puts "Tic tac toe"

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
end
while true
	player = 1
draw_board board, name
pick_location board, player
player = 2
draw_board board, name
pick_location board, player
end

