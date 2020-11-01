"""`get_net_income(Income, Expense)` returns the net total of income minus expenses."""
function get_net_income(incomes::Vector{Income}, expenses::Vector{Expense})::Money
    net_total = 0

    #add incomes
    for income in incomes
        net_total += income
    end

    #subtract expenses
    for expense in expenses
        net_total -= expense
    end
    return net_total
end
