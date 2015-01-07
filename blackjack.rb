
	card1 = rand(1 .. 11)
	card2 = rand(1 .. 11)
def start card1, card2
	total = card1 + card2

	puts "you have a #{card1}, and a #{card2}"
	until total > 21
		puts "You have #{total}, Would you like another card?(y/n)"
		hit = gets.chomp.downcase
				card = rand(1 .. 11)
		 total = choice total, card, hit
	end
	if total > 21
	puts "You went over"
end
end
def choice total, card, hit
	if hit == "y"
		puts "you got a #{card}"
		total = total + card
		puts "your total is #{total}"
	elsif hit == "n"
		puts "you stayed at #{total}"
	end
	total
end
start card1, card2