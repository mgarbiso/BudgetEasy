"""Expenses are entries that record the `expense`.
   `amount` is a `Money` object,
   `category` is a `String`,
   `merchant` is a String,
   `date` is a Date object,

   Expense(amount::Money, category::String, merchant::String, date::Date)

   Expense(amount::String, category::String, merchant::String; date::Date = today())

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

"""import_from_file! imports from `source` into the `Expense` object."""
function import_entry_from_file(::Type{Expense}, source)

    expense_csv = CSV.File(source; types=Dict(:amount => Money, :date => Date))

    [Expense(row.amount, row.category, row.merchant, row.date) for row in expense_csv]
end
