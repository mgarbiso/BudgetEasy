"""Expenses are entries that record the `expense`.
   `amount` is a `Money` object,
   `category` is a `String`,
   `merchant` is a String,
   `date` is a Date object,

   Expense(amount, category, merchant, date)

   Expense(amount, category, merchant; date = today())

"""
struct Expense <: Entry
    amount::Money
    category::String
    merchant::String
    date::Date
end

#Outer Constructor - Expense. today() is  from Dates.jl.
function Expense(amount, category, merchant; date = today())
    Expense(amount, category, merchant, date)
end

"""get_value(Expense) returns the `amount` property, `Money` object."""
get_value(expense::Expense) = expense.amount
