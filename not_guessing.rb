
def comp_guess number
		guess = rand(1 .. 100)
		puts guess
	if guess > number
		puts "to high"
		guess = rand(guess .. 1)
	elsif guess < number
		puts "to low"
		guess = rand(guess .. 100)
	elsif guess == number
		puts "the computer got it correct!"
		return true
	end
	false
end
def program
	puts "Enter a number from 1-100. The computer has 5 turns to guess it"
number = gets.chomp.to_i
	turn = 5
	while turn > 0
		if comp_guess number
			return
		end
		turn -= 1
		puts "the computer got it wrong, it has #{turn} tries left"
	end
end
program 