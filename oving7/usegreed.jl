function usegreed(coins)
    for i = 1:length(coins) - 1
        if coins[i] % coins[i + 1] > 0
            return false
        end
    end
    return true
end

a = [10, 5, 1]
b = [10, 7, 5]
hei = usegreed(b)
println("output:")
print(hei)
