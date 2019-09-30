function bruteforce(x)
	minLength = Inf
	for i in 1:size(x)[1]
		#display(i)
		for j in i+1:size(x)[1]
			#display(j)
			x1 = x[i, 1]
			y1 = x[i, 2]
			x2 = x[j, 1]
			y2 = x[j, 2]
			length = sqrt((x2-x1)^2+(y2-y1)^2)
			#display(length)
			if (length < minLength)
				minLength = length
			end
		end
	end
	return minLength
end

a = [0.0 0.0; 1.0 1.0; 100.0 0.0]
hei = bruteforce(a)
display(hei)
