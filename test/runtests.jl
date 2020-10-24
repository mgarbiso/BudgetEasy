using BudgetEasy, Test


# Testing the relations of money and potential errors.

m1 = BudgetEasy.Money(4, "monies")
m2 = BudgetEasy.Money(10, "monies")

num1 = 6
num2 = 8

@test m1 + m2 == BudgetEasy.Money(14, "monies")
@test m1 - m2 == BudgetEasy.Money(-6, "monies")
@test m1/num1 == BudgetEasy.Money(4/6, "monies")
# @test num2\m2 == BudgetEasy.Money(8\10, "monies")
