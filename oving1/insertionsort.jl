A = [5, 2, 4, 6, 1, 3];

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

function printList(A)
    for k in 1:length(A)
        print(A[k], ' ')
    end
    println();
end



printList(A)
insertionsort!(A)
printList(A)
