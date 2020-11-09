module BudgetEasy

const name = "BudgetEasy"

using Dates, CSV

#Money Object and Money Related Operations
include("Money.jl")

#Entries of the budget and their logics.
include("Entries.jl")
include("Expenses.jl")
include("Incomes.jl")

#The interactions of different types of entries.
include("BudgetOperations.jl")

#Objects of use.
export Money, Expense, Income

#Budget functions
export get_net_income, import_from_file!

end # module
