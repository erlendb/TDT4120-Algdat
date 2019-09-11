function maxofdoublelinkedlist(linkedlist)
    maximum = linkedlist.value
    node = linkedlist
    while (node.next != nothing)
        maximum = max(maximum, node.next.value)
        node = node.next
    end
    node = linkedlist
    while (node.prev != nothing)
        maximum = max(maximum, node.prev.value)
        node = node.prev
    end
    return maximum
end
