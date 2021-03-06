def encrypt(words,idx)

	puts "what word or phrase would you like to encrypt?"
	words = gets.chomp

	puts "What is your desired shift integer?"
	idx = gets.chomp.to_i

	# create an alphabet array
	alphabet = ('a'..'z').to_a
	# create an empty array to append new letters
	new_arr = []
	# downcase and split input word into array of letters and iterate over each letter
	words_arr = words.downcase.split("").map do |ltr|	
		# if the letter is in the alphabet, do this operation
		if ltr.match(/[a-z]/)
			# append the transformed letter using addition of alphabet array's index and the supplied index, mod 26
			# note: we can use the .index method here because there is are no repeating items in the array. 
			# if there were repeating items, the .index method will only find the first item!
			new_arr << alphabet[(alphabet.index(ltr)+idx) % 26]
		# if the letter is not in the alphabet, do this operation
		else
			# append the item to new_arr
			new_arr << ltr 
		end
	end
	# join and print out the characters in new_arr
	puts "Here is your encrypted phase:"
	puts new_arr.join
end


encrypt("Hello, world! Nice to see you. My name is Matt, and I am excited to show you how my cipher breaker works.", 7)