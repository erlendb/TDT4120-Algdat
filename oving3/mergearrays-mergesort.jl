#x og y er to sorterte arrays, coordinate angir koordinat akse
function mergearrays(x,y,coordinate)
	i = j = k = 1
	array = reshape([], 0, 2)
	while (j <= size(x)[1] && k <= size(y)[1])
		if (x[j, coordinate] <= y[k, coordinate])
			array = [array; x[j:j, :]]
			j=j+1
		else (x[j, coordinate] > y[k, coordinate])
			array = [array; y[k:k, :]]
			k=k+1
		end
		i=i+1
	end
	while (j <= size(x)[1])
		array = [array; x[j:j, :]]
		j=j+1
	end
	while (k <= size(y)[1])
		array = [array; y[k:k, :]]
		k=k+1
	end
	return array
end

#x usortert array, coordinate angir koordinat akse vi skal sortere langs
function mergesort(x, coordinate)
	l = reshape([], 0, 2)
	r = reshape([], 0, 2)
	array = reshape([], 0, 2)
	for i in 1 : div(size(x)[1], 2)
		l = [l; x[i:i, :]]
	end
	for i in div(size(x)[1], 2)+1 : size(x)[1]
		r = [r; x[i:i, :]]
	end
	if (size(l)[1] > 2)
		l = mergesort(l, coordinate)
	elseif (size(l)[1] == 2)
		if (l[1, coordinate] > l[2, coordinate])
			tmp = l[1:1, :]
			l[1:1, :] = l[2:2, :]
			l[2:2, :] = tmp
		end
	end
	if (size(r)[1] > 2)
		r = mergesort(r, coordinate)
	elseif (size(r)[1] == 2)
		if (r[1, coordinate] > r[2, coordinate])
			tmp = r[1:1, :]
			r[1:1, :] = r[2:2, :]
			r[2:2, :] = tmp
		end
	end
	return mergearrays(l, r, coordinate)
end

a = [1 2; 3 6; 4 1; 6 7; 10 4;]
b = [2 2; 4 4; 6 6; 11 3]
c = [1.0 0.0; 2.0 0.0; 3.0 0.0]
d = [3 4; 1 2; 67 3; 3 3; 4 3; 4 5; 10 4; 5 1]
e = [2 3; 1 2; 4 5; 5 6]
#arr = mergearrays(a, b, 1)
#display(arr)

array = mergesort(d, 1)
display(array)
