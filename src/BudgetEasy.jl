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

#Objects of use.
export Money, Expense, Income

#Budget functions
export get_net_income

end # module
