def caesar_cipher(string, shift)
	char_array = string.split("")
	ascii = Array.new
	encryption = Array.new
	char_array.each do |character|
		if character.ord.between?(32,64)
			ascii << character
		elsif character.ord.between?(97,122)
			character=character.ord
			if character+shift>122
				a=122-character
				character+=a
				character=96+(shift-a)
				ascii << character
			else
			ascii << character+=shift
			end
		elsif character.ord.between?(65,90)
			character=character.ord
			if character+shift>90
				a=90-character
				character+=a
				character=64+(shift-a)
				ascii << character
			else
			ascii << character+=shift
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
