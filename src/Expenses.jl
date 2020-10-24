"""Expenses are Entries that record the `amount`, `date`, and `category` of expense,
   `merchant`.
   `amount` is a `Money` object,
   `category` is a `String`,
   `date` is a Date object,
   `merchant` is a `String`
"""
struct Expense <: Entry
    amount::Money
    category::String
    merchant::String
    currency::String
    date::Date
end
