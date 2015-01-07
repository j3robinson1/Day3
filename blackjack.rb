puts "you have a #{card}, would you like to hit?"
def dealer
	total == 0
	card == rand(1 .. 11)
	while total <= 21
		return choice total, card
	end
end
def choice total, card
	if hit == "y"
		total == total + card
		puts "You have #{total}, Would you like another card?(y/n)"
	hit == gets.chomp.downcase
	else
		puts "you stayed at #{total}"
	end
end
dealer