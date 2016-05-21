def caesar(string, shift)
	array = string.split("")
	x = Array.new
	s = Array.new
	array.each do |letter|
		if letter ==" "
			x << letter
		else
			letter=letter.ord

			x << letter+=shift
		
		end
	end
		x.each do |number|
			number = number.chr
			s << number
		end

puts s.join(" ")
end
caesar("abc abc",1)
caesar("What a string!", 5)
