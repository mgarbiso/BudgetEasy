module BudgetEasy

const name = "BudgetEasy"

using Dates

# using JSON3, Currencies, Dates

#Import Raw data!

# Create Pretty various plots, maybe Gadfly or plots.

# Over a period of time!

include("Money.jl")


include("Entries.jl")
include("Expenses.jl")
include("Incomes.jl")

include("BudgetOperations.jl")


export Money, Expense, Income

end # module
