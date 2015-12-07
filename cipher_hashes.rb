# attempt to solve caesar cipher problem using letters => index hash rather than letters array

def caesar_cipher()

	$letters_idx = {
		'a' => 0,
		'b' => 1,
		'c' => 2,
		'd' => 3,
		'e' => 4,
		'f' => 5,
		'g' => 6,
		'h' => 7,
		'i' => 8,
		'j' => 9,
		'k' => 10,
		'l' => 11,
		'm' => 12,
		'n' => 13,
		'o' => 14,
		'p' => 15,
		'q' => 16,
		'r' => 17,
		's' => 18,
		't' => 19,
		'u' => 20,
		'v' => 21,
		'w' => 22,
		'x' => 23,
		'y' => 24,
		'z' => 25
		}



	puts "What word would you like to cipher?"
	word = gets.chomp.to_s

	

	puts "What is your desired shift integer"
	shift = gets.chomp.to_i

	

	def option_loop()
		puts "Would you like to encrypt or decrypt this word?"
		puts "[type 'e' to encrypt or 'd' to decrypt.]"
		@option = gets.chomp.to_s
		unless @option == 'e' || @option == 'd'
			puts
			puts "sorry, only 'e' or 'd' are acceptable inputs for encryption and decryption!"
			sleep(1.5)
			puts
			option_loop
		end
	end

	

	option_loop



	def encrypt(letter, shift)
		# get encrypted value by getting value of letter in $letters_idx, adding shift integer, and taking mod 26
		encrypted_value = ($letters_idx[letter] + shift) % 26
		# get encrypted key by usings the .keys method on $letters_idx and giving the encrypted value as the argument
		encrypted_key = $letters_idx.keys[encrypted_value]  
	end



	def decrypt(letter, shift)
		# get decrypted value by getting value of letter in $letters_idx, subtracting shift integer, and taking mod 26
		decrypted_value = ($letters_idx[letter] - shift) % 26
		# get decrypted key by usings .keys method on $letters_idx and giving the decrypted value as the argument
		decrypted_key = $letters_idx.keys[decrypted_value]
	end



	# take input word or phrase, split into each character, and iterate over the characters
	new_word = word.downcase.split("").map do |letter|
		# set up case structure for option argument supplied by user 
		case @option
		# if option is encrypt, do this
		when "e"
			# use regex to filter for alphabetical characters
			if letter.match(/[a-z]/)
				# encrypt alphabetical characters, return result
				letter.encrypt(letter,shift)
			else
				# return non-alphabetical characters
				letter
			end
		# if option is decrypt, do this
		when "d"
			# use regex to filter for alphabetical characters
			if letter.match(/[a-z]/)
				# encrypt alphabetical characters, return result
				letter.decrypt(letter,shift)
			else
				# return non-alphabetical characters
				letter
			end
		else
			# hopefully should not happen
			puts "An error occurred. Goodbye!"
			exit(0)
		end
	end
	# join the encrypted/decrypted values into a string; capitalize first letter
	p "Your ciphered phrase is '#{new_word.join("").capitalize}'."
end



caesar_cipher()


