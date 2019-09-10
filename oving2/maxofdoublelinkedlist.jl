# Jeg tror jeg får kjeft om jeg hadde bruket flere emojies
# PS ikke lim in NodeDoublyLinked her
function maxofdoublelinkedlist(linkedlist)
    maxi = linkedlist.value
    println(maxi)
    node = linkedlist
    while (node.next != nothing)
        maxi = max(maxi, node.next.value)
        println(maxi)
        node = node.next
    end
    while (node.prev != nothing)
        maxi = max(maxi, node.prev.value)
        node = node.prev
    end
    return maxi
end


mutable struct NodeDoublyLinked
    prev::Union{NodeDoublyLinked, Nothing} # Er enten forrige node eller nothing
    next::Union{NodeDoublyLinked, Nothing} # Er enten neste node eller nothing
    value::Int # Verdien til noden
end

function createLinkedListDoublyLinked(length)
    # Create the list from the last element in the chain
    # This is so the returned element will be the first in the chain
    current = nothing
    beforeCurrent = nothing

    for i in 1:length
        # only fill out the next field because prev will be filled out later
        current = NodeDoublyLinked(nothing, beforeCurrent, rand(-100:100))
        # link up the node before this node to this node
        if beforeCurrent != nothing
            beforeCurrent.prev = current
        end
        beforeCurrent = current
    end
    return current
end

list = createLinkedListDoublyLinked(10)
#println(list)

println()
println()

a = maxofdoublelinkedlist(list)
println(a)
