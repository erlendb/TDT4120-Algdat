function countingsortletters(A,position)
	count = zeros(Int8, 27)
	for i = 1:length(A)
		char = A[i][position]
		index  = char - 'a' + 1
		count[index] = count[index] + 1
	end
	for i = 2:length(count)
		count[i] = count[i] + count[i - 1]
	end
	output = Vector{String}(undef, length(A))
	for i = length(A):-1:1
		char = A[i][position]
		index = count[char - 'a' + 1]
		output[index] = A[i]
		count[char - 'a' + 1] = count[char - 'a' + 1] - 1
	end
	return output
end

a = ["a", "d", "b", "c"]

hei = countingsortletters(a, 1)
display(hei)

function chartodigit(character)
    #Dette er en hjelpefunksjon for å få omgjort en char til tall
    #Den konverterer 'a' til 1, 'b' til 2 osv.
    #Eksempel: chartodigit("hei"[2]) gir 5 siden 'e' er den femte bokstaven i alfabetet.

    return character - '`'
end
