"""Incomes are entries that record income,
   `amount` is a `Money` object,
   `category` is a `String`,
   `source` is a String,
   `date` is a Date object,

   Income(amount::Money, category::String, merchant::String, date::Date)

   Income(amount::Money, category::String, merchant::String; date = today()::Date)

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


"""get_value(Income) returns the `amount` property, `Money` object."""
get_value(income::Income) = income.amount
