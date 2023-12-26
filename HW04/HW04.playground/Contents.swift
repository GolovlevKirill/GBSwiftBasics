//Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
//Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
struct Pizza{
    var pizzaType: PizzasType
    var cost: Int
    var isThin: Bool
    var additionIngridients: [AdditionIngridients]
    
    enum PizzasType {
        case pepperoni
        case pineapple
        case margarita
        case vegetarian
    }
    
    enum AdditionIngridients {
        case pepperoni
        case tomato
        case cheese
    }
    
}

//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
//Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
class Pizzeria {
    private var pizzas: [Pizza]
      
      init(pizzas: [Pizza]) {
          self.pizzas = pizzas
      }
    
    func addNewPizza (pizza: Pizza){
        self.pizzas.append(pizza)
    }
    
    func getPizzasAvalible() -> [Pizza] {
        return self.pizzas
    }
}




//Создать экземпляр класса пиццерии и добавить в него несколько пицц.

let pizzaMargarita = Pizza(pizzaType: .margarita, cost: 400, isThin: false, additionIngridients: [.cheese, .tomato])
let pizzaPineapple = Pizza(pizzaType: .pineapple, cost: 350, isThin: true, additionIngridients:  [.cheese])

var pizzeria = Pizzeria(pizzas: [pizzaMargarita, pizzaPineapple])

