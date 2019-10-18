function mincoinsgreedy(coins, value)
    coinsCount = 0
    for i = 1:length(coins)
        coinsCount = coinsCount + div(value, coins[i])
        value = value % coins[i]
    end
    return coinsCount
end

#coins = [10, 7, 1]
#value = 14
coins = [500, 100, 5, 1]
value = 86 # -> skal gi 18
hei = mincoinsgreedy(coins, value)
println("output:")
print(hei)
