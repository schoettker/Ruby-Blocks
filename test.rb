def caesar_cipher(string, shift)
	char_array = string.split("")
	ascii = Array.new
	encryption = Array.new
	char_array.each do |letter|
		if letter.ord.between?(32,64)
			ascii << letter
		elsif letter.ord.between?(97,122)
			letter=letter.ord
			if letter+shift>122
				a=122-letter
				letter+=a
				letter=96+(shift-a)
				ascii << letter
			else
			ascii << letter+=shift
			end
		elsif letter.ord.between?(65,90)
			letter=letter.ord
			if letter+shift>90
				a=90-letter
				letter+=a
				letter=64+(shift-a)
				ascii << letter
			else
			ascii << letter+=shift
			end
		end
	end
		ascii.each do |number|
			encrypted_letter = number.chr
			encryption << encrypted_letter
		end

puts encryption.join(" ")
end
caesar_cipher("What a string!", 5)
