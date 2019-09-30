function binaryintervalsearch(x,delta, coordinate)
	medianElm = (size(x)[1] + 1)/2
	if (medianElm % 1 > 0)
		median = (x[trunc(Int, medianElm - 0.5), coordinate] + x[trunc(Int, medianElm + 0.5), coordinate])/2

	else
		median = x[trunc(Int, medianElm), coordinate]

	end
	lower = median - delta
	upper = median + delta
	#display(median)
	#display(upper)
	a = b = -1
	for i in 1:size(x)[1]
		if (x[i, coordinate] >= lower)
			a = i
			break
		end
	end
	for i in a:size(x)[1]
		#display(i)
		if (x[i, coordinate] <= upper)
			#display(i)
			b = i
		end
	end
	if (a > medianElm)
		a = -1
		b = -1
	end
	return a, b
end

a = [1 2; 4 1; 6 7; 7 4; 5 5]
b = [1.0 -1.0; 2.0 2.0; 3.0 3.0; 4.0 5.0; 5.0 5.0]
c = [1.0 0.0; 2.0 0.0; 3.0 0.0]
d = [1.0 0.0; 2.0 0.0; 3.0 0.0; 4.0 0.0]
delta = 0.1

hei = binaryintervalsearch(d, delta, 1)
display(hei)
