def caesar(string, shift)
	array = string.split("")
	array.each do |letter|
		x = Array.new
		x << letter.ord
=begin
		converted_letter+=shift
		puts converted_letter.chr
=end
puts x
	end
end
caesar("abc",1)
