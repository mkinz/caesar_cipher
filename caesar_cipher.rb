def encrypt(words,idx)
	alphabet = ('a'..'z').to_a
	new_arr = []
	words_arr = words.downcase.split("").map do |ltr|	
		if ltr.match(/[a-z]/)
			new_arr << alphabet[(alphabet.index(ltr)+idx) % 26]
		else
			new_arr << ltr 
		end
	end
	puts new_arr.join
end


encrypt("Hello world!", -2)