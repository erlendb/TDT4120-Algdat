
mutable struct Node
    next::Union{Node, Nothing} # next kan peke på et Node-objekt eller ha verdien nothing.
    value::Int
end

function createlinkedlist(length)
    # Creates the list starting from the last element
    # This is done so the last element we generate is the head
    child = nothing
    node = nothing

    for i in 1:length
        node = Node(child, rand(1:800))
        child = node
    end
    return node
end

function findindexinlist(linkedlist, index)
    i = 1
    node = linkedlist
    while (i < index)
        if (node.next == nothing)
            return -1
        end
        node = node.next
        i = i+1
    end
    return node.value
end


list = createlinkedlist(8)

println(list)
println()
hei = findindexinlist(list, 3)
println()
println(hei)
