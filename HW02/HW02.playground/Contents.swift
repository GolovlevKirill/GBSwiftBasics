import UIKit

var str = "DZ2 Swift Basics"

//Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.
//

func calcDeposit (value: Double, percentage: Double, period: Int) -> Double {
    let res: Double = ((value * percentage * Double(period)/365)/100)
    return res
}

print(calcDeposit(value: 200000, percentage: 13, period: 365))
print()

//Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
enum Pizzas {
    case pepperoni
    case fourCheese
    case pineapple
}

var pizza1 = Pizzas.pepperoni
var pizza2 = Pizzas.fourCheese
var pizza3 = Pizzas.pineapple


//Добавить возможность получения названия пиццы через rawValue


enum Pizzas2: String {
    case pepperoni = "Пицца пепперони"
    case fourCheese = "Пицца четыре сыра"
    case pineapple = "Пицца с ананасами"
}

func getPizzaName(pizza: Pizzas2) -> String {
    pizza.rawValue
}

var pizza4 = Pizzas2.pepperoni

print(getPizzaName(pizza: pizza4))
print(getPizzaName(pizza: .fourCheese))
print(getPizzaName(pizza: .pineapple))
