"""
Entries are abstract types for all objects of a budget.
"""
abstract type Entry end

"""get_value returns the amount of money associated with that entry type."""
get_value(entry::Entry) = error("get_value is not implemented for $(typeof(entry)) yet.")

"""import_entry_from_file imports from `source` into the `Entry` object and returns an `Array{Entry,1}`."""
import_entry_from_file(entry_type::Type{Entry}, source) = error("import_from_file! is not implemented for $(entry_type) yet.")
