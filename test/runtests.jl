using BudgetEasy, Test, Dates


# Testing the relations of money and potential errors.

m1 = BudgetEasy.Money(4, "monies")
m2 = BudgetEasy.Money(10, "monies")
m3 = BudgetEasy.Money(10, "dollars")

num1 = 6
num2 = 8

@test m1 + m2 == BudgetEasy.Money(14, "monies")
@test m1 - m2 == BudgetEasy.Money(-6, "monies")
@test m1/num1 == BudgetEasy.Money(4/6, "monies")

@test_throws ErrorException m3 + m1
@test_throws ErrorException m3 - m1

@test m1 - 0 == BudgetEasy.Money(4, "monies")
@test 0 - m2 == BudgetEasy.Money(-10, "monies")

@test m1 + 0 == BudgetEasy.Money(4, "monies")
@test 0 + m2 == BudgetEasy.Money(10, "monies")

@test parse(Money, "5 monies") == BudgetEasy.Money(5.0, "monies")
@test parse(Money, "5.0 monies") == BudgetEasy.Money(5.0, "monies")
@test parse(Money, ".500 monies") == BudgetEasy.Money(0.5, "monies")
@test parse(Money, ".5 monies") == BudgetEasy.Money(0.5, "monies")
@test parse(Money, "0.05 monies") == BudgetEasy.Money(0.05, "monies")

@test parse(Money, "mon 5") == BudgetEasy.Money(5.0, "mon")
@test parse(Money, "mon 5.0") == BudgetEasy.Money(5.0, "monies")
@test parse(Money, "mon .500") == BudgetEasy.Money(0.5, "monies")
@test parse(Money, "mon .5") == BudgetEasy.Money(0.5, "monies")
@test parse(Money, "mon 0.05") == BudgetEasy.Money(0.05, "monies")

@test_throws parse(Money, "mon 0.05 monies")

#Testing Entry Properties

e1 = BudgetEasy.Expense(BudgetEasy.Money(3, "monies"), "Test Category 1", "Test Merchant 1", today())
e2 = BudgetEasy.Expense(BudgetEasy.Money(6, "monies"), "Test Category 2", "Test Merchant 2", today())

expenses1 = [e1, e2]

i1 = BudgetEasy.Income(BudgetEasy.Money(10, "monies"), "Test Category 1", "Test Merchant 1", today())
i2 = BudgetEasy.Income(BudgetEasy.Money(2, "monies"), "Test Category 2", "Test Merchant 2", today())

incomes1 = [i1, i2]

@test get_net_income(incomes1,expenses1) == BudgetEasy.Money(3, "monies")

# @test get_value()

#Test BudgetOperations
