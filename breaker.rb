# this is a brute force caesar cipher codebreaker

def breaker(word)
	# create an alphabet array
	alphabet = ('a'..'z').to_a
	# increment the idx 26 times to try all combinations of indices
	26.times do |idx|
		# create a new array 
		new_arr = []
		# downcase and split the input word into each letter
		word_arr = word.downcase.split("").each do |ltr|
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
		# print the new array for each iteration of idx
		puts new_arr.join
	end	
end

breaker("fcjjm umpjb!")