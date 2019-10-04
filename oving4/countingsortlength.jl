function countingsortlength(A)
	count = []
	for i = 1:length(A)
		string = A[i]
		len = length(A[i])
		index  = len + 1
		for i=length(count):index - 1
			push!(count, 0)
		end
		count[index] = count[index] + 1
	end
	for i = 2:length(count)
		count[i] = count[i] + count[i - 1]
	end
	output = Vector{String}(undef, length(A))
	for i = length(A):-1:1
		string = A[i]
		len = length(A[i])
		index = count[len + 1]
		output[index] = A[i]
		count[len + 1] = count[len + 1] - 1
	end
	return output
end

a = ["aaaa", "bbbbbbb", "ccc"]
hei = countingsortlength(a)
display(hei)
