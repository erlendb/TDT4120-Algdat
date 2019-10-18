function lis(s, mls)
    ml = maximum(mls)
    lis = zeros(Int, ml)
    lis_index = ml
    for i = length(mls):-1:1
        if lis_index == ml
            if mls[i] == ml
                lis[lis_index] = s[i]
                lis_index = lis_index - 1
            end
        else
            if mls[i] == lis_index
                lis[lis_index] = s[i]
                lis_index = lis_index - 1
            end
        end
    end
    return lis
end

a = [2,1,4,3,6,5] # -> lis = [1,3,5]
a_mls = [1, 1, 2, 2, 3, 3]

b = [441, 1000, 22, 678, 695, 0, 681, 956, 48, 587, 604, 857, 689, 346, 425, 513, 476, 917, 114, 43, 327, 172, 162, 76, 91, 869, 549, 883, 679, 812, 747, 862, 228, 368, 774, 838, 107, 738, 717, 25, 937, 927, 145, 44, 634, 557, 850, 965]
b_mls = [1, 2, 1, 2, 3, 1, 3, 4, 2, 3, 4, 5, 5, 3, 4, 5, 5, 6, 3, 2, 4, 4, 4, 3, 4, 6, 6, 7, 7, 8, 8, 9, 5, 6, 9, 10, 5, 8, 8, 2, 11, 11, 6, 3, 7, 7, 11, 12]

hei = lis(b, b_mls)
println("output:")
print(hei);
