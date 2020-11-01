module BudgetEasy

const name = "BudgetEasy"

using Dates

# using JSON3, Currencies, Dates

# File Modification Section

# This creates a buget (JSON) file.

#Import Raw data!

# Add an entries to files.


#Objects
# Entry object that should be Abstract different types of entries would be
# expenses, incomes

# Use Currences.jl for expressing amounts of money.

# Create Pretty various plots, maybe Gadfly or plots.
# Over a period of time!

include("Money.jl")
include("Entries.jl")
include("Expenses.jl")
include("Incomes.jl")


export Money

end # module
