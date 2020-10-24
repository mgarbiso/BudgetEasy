#Import this functions for Money functionality.
import Base:+, -, *, /

"""This is a simple money object is has a value `Real` and a units `String`"""
struct Money
    value::Real
    units::String
end

#Function to check the units
"""This checkunits checks the units of to Money objects to see if they have
   the same units."""
function checkunits(money1::Money,money2::Money)
    money1.units == money2.units ? true : error("The units need to match between $(money1::Money) and $(money2::Money).")
end

#You can add money to money.
function +(money1::Money,money2::Money)::Money
    checkunits(money1,money2)
    Money(money1.value + money2.value, money1.units)
end

#You subtract add money to money.
function -(money1::Money,money2::Money)::Money
    checkunits(money1,money2)
    Money(money1.value - money2.value, money1.units)
end


#You can multiply money by numbers.
*(money1::Money,number::Real) = Money(money1.value*number, money1.units)
*(number::Real,money1::Money) = Money(money1.value*number, money1.units)

#You can divide money my numbers.
/(money1::Money,number::Real) = Money(money1.value/number, money1.units)
# \(number::Real,money1::Money) = Money(number\money1.value, money1.units)
