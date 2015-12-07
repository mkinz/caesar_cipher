# this is a brute force caesar cipher codebreaker

def breaker(word)
	# create an alphabet array
	alphabet = ('a'..'z').to_a

	tmp_filter_arr = []

	possible_arr_1 = []

	possible_arr_2 = []
	
	impossible_arr = []

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
		tmp_filter_arr << new_arr.join
	end
	
	# add selective intelligent filtering 1: if words have vowels, they are possible english words
	tmp_filter_arr.each do |item|
		if item.match(/[aeiou]/)
			possible_arr_1 << item
		else
			impossible_arr << item
		end
	end

	# add selective intelligent filtering 2: if words contains certain double letters, they are impossible english words
	possible_arr_1.each do |item|
		if item.match(/(bk)|(fq)|(jc)|(jt)|(mj)|(qh)|(qx)|(vj)|(wz)|(zh)
				(bq)|(fv)|(jd)|(jv)|(mq)|(qj)|(qy)|(vk)|(xb)|(zj)
				(bx)|(fx)|(jf)|(jw)|(mx)|(qk)|(qz)|(vm)|(xg)|(zn)
				(cb)|(fz)|(jg)|(jx)|(mz)|(ql)|(sx)|(vn)|(xj)|(zq)
				(cf)|(gq)|(jh)|(jy)|(pq)|(qm)|(sz)|(vp)|(xk)|(zr)
				(cg)|(gv)|(jk)|(jz)|(pv)|(qn)|(tq)|(vq)|(xv)|(zs)
				(cj)|(gx)|(jl)|(kq)|(px)|(qo)|(tx)|(vt)|(xz)|(zx)
				(cp)|(hk)|(jm)|(kv)|(qb)|(qp)|(vb)|(vw)|(yq)
				(cv)|(hv)|(jn)|(kx)|(qc)|(qr)|(vc)|(vx)|(yv)
				(cw)|(hx)|(jp)|(kz)|(qd)|(qs)|(vd)|(vz)|(yz)
				(cx)|(hz)|(jq)|(lq)|(qe)|(qt)|(vf)|(wq)|(zb)
				(dx)|(iy)|(jr)|(lx)|(qf)|(qv)|(vg)|(wv)|(zc)
				(fk)|(jb)|(js)|(mg)|(qg)|(qw)|(vh)|(wx)|(zg)/)
			impossible_arr << item
		else
			possible_arr_2 << item
		end
	end
	
	puts "Here are your possible english phrases:"
	possible_arr_2.each do |item|
		puts item
	end
	
	
	
end

breaker("olssv, dvysk! upjl av zll fvb.")