function lislength(s)
    mls = zeros(Int, size(s))
    mls[1] = 1
    for i = 2:length(s)
        tmpMax = 0
        for j = i - 1:-1:1
            if s[j] < s[i] && mls[j] > tmpMax
                println(j)
                tmpMax = mls[j]
            end
        end
        mls[i] = tmpMax + 1
    end
    println(mls)
    return maximum(mls) # Returnerer det største tallet i listen
end



a = [5,3,3,6,7] # skal bli [1,1,1,2,3]
b = [441, 1000, 22, 678, 695, 0, 681, 956, 48, 587, 604, 857, 689, 346, 425, 513, 476, 917, 114, 43, 327, 172, 162, 76, 91, 869, 549, 883, 679, 812, 747, 862, 228, 368, 774, 838, 107, 738, 717, 25, 937, 927, 145, 44, 634, 557, 850, 965]
# 12
hei = lislength(b);
println("output:");
print(hei);
