"""Incomes are entries that record income,
   `amount` is a `Money` object,
   `category` is a `String`,
   `source` is a String,
   `date` is a Date object,

   Income(amount, category, merchant, date)

   Income(amount, category, merchant; date = today())

"""
struct Income <: Entry
    amount::Money
    category::String
    source::String
    date::Date
end


#Outer Constructor - Expense. today() is  from Dates.jl.
function Income(amount, category, source; date = today())
    Income(amount, category, source, date)
end
