function insertionsort!(A)
    for i in 2:length(A)
        for j in 1:i
            if A[i] < A[j]
                tmp = A[j]
                A[j] = A[i]
                A[i] = tmp
            end
        end
    end
end
