
	card1 = rand(1 .. 11)
	card2 = rand(1 .. 11)

@stop = true
def start card1, card2
	total = card1 + card2
	until total > 21 || @stop == false
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
		@stop = false
	end
	total
end
def split card1, card2
	total = card1
	until total > 21
	puts "You have #{total}, Would you like another card?(y/n)"
		hit = gets.chomp.downcase
		if hit == "n"
			break
		end
		card = rand(1 .. 11)
		total = choice total, card, hit
	end
	total = card2
	until total > 21 || @stop == false
	puts "You have #{total}, Would you like another card?(y/n)"
		hit = gets.chomp.downcase
		card = rand(1 .. 11)
		total = choice total, card, hit
	end
end

puts "you have a #{card1}, and a #{card2}"
	puts "would you like to split?(y/n)"
	@split = gets.chomp.downcase
if @split == "y"
split card1, card2
elsif @split == "n"
start card1, card2
end