"""Incomes are Entries that record the `amount`, `date`, and `category` of income earned,
   `amount` is a `Money` object,
   `category` is a `String`,
   `source` is a String,
   `date` is a Date object,
"""
struct Income <: Entry
    amount::Money
    category::String
    source::String
    date::Date
end
