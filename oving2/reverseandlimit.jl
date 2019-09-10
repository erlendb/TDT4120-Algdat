function reverseandlimit(array, maxnumber)
    newArray = []
    for i in 1:length(array)
        push!(newArray, min(maxnumber, pop!(array)))
    end
    return newArray
end
