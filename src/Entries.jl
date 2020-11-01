"""
Entries are abstract types for all objects of a budget.
"""
abstract type Entry end

"""get_value returns the amount of money associated with that entry type."""
get_value(entry::Entry) = error("get_value is not implemented for $(typeof(entry)) yet.")
