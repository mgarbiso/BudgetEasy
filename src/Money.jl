#Import this functions for Money functionality.
import Base:+, -, *, /

"""This is a simple money object is has a value `Real` and a units `String`"""
struct Money
    value::Real
    units::String
end

#To Do, for adding and subtracting money you have to compare the currencies.

#You can add money to money.
+(money1::Money,money2::Money) = Money(money1.value + money2.value, money1.units)

#You subtract add money to money.
-(money1::Money,money2::Money) = Money(money1.value - money2.value, money1.units)

#You can multiply money by numbers.
*(money1::Money,number::Real) = Money(money1.value*number, money1.units)
*(number::Real,money1::Money) = Money(money1.value*number, money1.units)

#You can divide money my numbers.
/(money1::Money,number::Real) = Money(money1.value/number, money1.units)
# \(number::Real,money1::Money) = Money(number\money1.value, money1.units)
