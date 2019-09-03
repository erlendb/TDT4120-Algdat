A = [5, 2, 4, 6, 1, 3];

# A = [2, 4, 5, 6, 1, 3];
#      1  2  3  4  5  6
#                  i
#      j
#         jl
#         ju

function insertionsort!(A)
    for i in 2:length(A)
        j = div(i,2)
        j_upper = i
        j_lower = 1
        while true
            if A[i] == A[j]
                j = j+1;
                break;
            elseif A[i] < A[j]
                j_upper = j
                if j_upper == j_lower
                    j = j_lower
                    break;
                end
                if j == 1
                    break;
                end
                if j == j_lower #eller når ju<jl
                    break
                end
                j = j_lower + div(j - j_lower, 2)
            else
                j_lower = j + 1
                if j_lower == j_upper
                    j = j_lower
                    break;
                end
                j = j + div(j_upper - j, 2)
            end
        end
        sort(A,i,j)
        printList(A)
    end
end

# i skal inn på plasen til j
function sort(A,i,j)
    if j == i
        return
    end
    tmp = A[i]
    for k in i:-1:j+1
        A[k] = A[k-1]
    end
    A[j] = tmp
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
