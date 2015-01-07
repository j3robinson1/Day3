puts "guess a number from 1-100. You have 5 tries"
def random_num
	number = rand(1 .. 100)
	turn = 5
	while turn > 0
		return if guess number
		turn -= 1
		puts "you got it wrong, you have #{turn} tries left"
	end
end

def guess number
	guess = gets.chomp.to_i
	if guess > number
		puts "to high"
	elsif guess < number
		puts "to low"
	elsif guess == number
		puts "You got it correct!"
		return true
	end
	false
end
random_num