def caesar(string, shift)
	array = string.split("")
	x = Array.new
	s = Array.new
	array.each do |letter|
		if letter ==" "
			x << letter
		else
			letter=letter.ord
			if letter+shift>122
				a=122-letter
				letter+=a
				letter=96+(shift-a)
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
caesar("what a string", 5)
