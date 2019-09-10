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
