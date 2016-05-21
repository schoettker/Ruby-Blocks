def caesar(string, shift)
	array = string.split("")
	x = Array.new
	s = Array.new
	array.each do |letter|
		if letter.ord.between?(32,64)
			x << letter
		elsif letter.ord.between?(97,122)
			letter=letter.ord
			if letter+shift>122
				a=122-letter
				letter+=a
				letter=96+(shift-a)
				x << letter
			else
			x << letter+=shift
			end
		elsif letter.ord.between?(65,90)
			letter=letter.ord
			if letter+shift>90
				a=90-letter
				letter+=a
				letter=64+(shift-a)
				x << letter
			else
			x << letter+=shift
			end
		end
	end
		x.each do |number|
			number = number.chr
			s << number
		end

puts s.join(" ")
end
caesar("What a string!", 5)
