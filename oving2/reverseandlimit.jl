# Visste du at funksjoner kan ha emoji i navnet?  💯
function reverseandlimit(array, maxnumber)
    newArray = []
    for i in 1:length(array)
        push!(newArray, min(maxnumber, pop!(array)))
    end
    return newArray
end


a = [1, 2,3,4,5,6,7,8,9]
println(a)
b = reverseandlimit(a, 5);
println(a);
println(b);
