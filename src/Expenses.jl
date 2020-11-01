"""Expenses are Entries that record the `expense`.
   `amount` is a `Money` object,
   `category` is a `String`,
   `merchant` is a String,
   `date` is a Date object,
"""
struct Expense <: Entry
    amount::Money
    category::String
    merchant::String
    date::Date
end
