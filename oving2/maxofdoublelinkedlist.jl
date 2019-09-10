function maxofdoublelinkedlist(linkedlist)
    maxi = linkedlist.value
    node = linkedlist
    while (node.next != nothing)
        maxi = max(maxi, node.next.value)
        node = node.next
    end
    while (node.prev != nothing)
        maxi = max(maxi, node.prev.value)
        node = node.prev
    end
    return maxi
end
