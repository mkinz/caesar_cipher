def encrypt(words,idx)
	# create an alphabet array
	alphabet = ('a'..'z').to_a
	# create an empty array to append new letters
	new_arr = []
	# downcase and split input word into array of letters and iterate over each letter
	words_arr = words.downcase.split("").map do |ltr|	
		# if the letter is in the alphabet, do this operation
		if ltr.match(/[a-z]/)
			# append the transformed letter using addition of alphabet array's index and the supplied index, mod 26
			new_arr << alphabet[(alphabet.index(ltr)+idx) % 26]
		# if the letter is not in the alphabet, do this operation
		else
			# append the item to new_arr
			new_arr << ltr 
		end
	end
	# join and print out the characters in new_arr
	puts new_arr.join
end


encrypt("Hello, world! Nice to see you.", 7)