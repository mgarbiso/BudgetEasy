module BudgetEasy

const name = "BudgetEasy"

using Dates

# using JSON3, Currencies, Dates

#Import Raw data!

# Create Pretty various plots, maybe Gadfly or plots.

# Over a period of time!

include("Money.jl")
include("Expenses.jl")
include("Incomes.jl")


export Money, Expense

end # module
