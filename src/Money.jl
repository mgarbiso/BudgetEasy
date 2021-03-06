#Import this functions for Money functionality.
import Base:+, -, *, /, show, parse

"""This is a simple money object is has a value `Real` and a units `String`
   `Money(value::Real, units::String, prefix::Bool)` where the prefix designates whether the units is a prefix ie \$ for \$ 5 is true or false for 5 USD.
"""
struct Money
    value::Real
    units::String
    prefix::Bool
end

# Inner Constructor for not mentioning the prefix bool.
Money(value::Real, units::String) = Money(value, units, false)

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

#You can add 0 to Money.
+(zero,money::Money) = money
+(money::Money,zero) = money

#You can subtract 0 from Money.
-(zero,money::Money) = Money(-money.value, money.units)
-(money::Money,zero) = money

#You can multiply money by numbers.
*(money1::Money,number::Real) = Money(money1.value*number, money1.units)::Money
*(number::Real,money1::Money) = Money(money1.value*number, money1.units)::Money

#You can divide money my numbers.
/(money1::Money,number::Real) = Money(money1.value/number, money1.units)::Money

#IO of Money
function show(io::IO, money::Money)
    if money.prefix
        print(io,"$(money.units) $(round(money.value; digits = 2))")
    else
        print(io,"$(round(money.value; digits = 2)) $(money.units)")
    end
end

#Money Parser
function parse(::Type{Money}, str::String)

    prefix = ""
    value_str = ""
    postfix = ""

    finished_prefix = false
    finished_value_str = false

    for character in str
        if (isdigit(character) || character == '.') && !finished_value_str
            value_str *= character
            finished_prefix = true
        elseif !finished_prefix
            prefix *= character
        else
            postfix *= character
            finished_value_str = true
        end
    end

    prefix = prefix |> lstrip |> rstrip
    postfix = postfix |> lstrip |> rstrip

    if prefix != "" && postfix != ""
        error("You can only have a prefix or postfix for your money unit, $(srt).")
    elseif prefix == "" && postfix == ""
        error("You must have a prefix or postfix for your money, $(srt)!")
    end

    if prefix != ""
        isprefix = true
    else
        isprefix = false
    end

    return Money(parse(Float64, value_str), prefix*postfix, isprefix)

end

#Constructor for Money with a string.
Money(str::String) = parse(Money, str)
