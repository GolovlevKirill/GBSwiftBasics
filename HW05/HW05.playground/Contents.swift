//В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
//Создайте протокол, в котором будут содержаться функции открытия и закрытия.
//Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

protocol MenuItem {
    var cost: Int { get set }
}

struct Pizza: MenuItem {
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

struct FriPotato: MenuItem {
    var cost: Int
    var size: String
}


class Pizzeria {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem]) {
           self.menuItems = menuItems
       }
    func addNewMenuItem(menuNewItem: MenuItem) {
        menuItems.append(menuNewItem)
    }
}

protocol PizzeriaWorkClose {
    func open()
    func close()
}

extension Pizzeria:  PizzeriaWorkClose {
    func open() {
        print("Пиццерия открыта")
    }
    func close() {
        print("Пиццерия закрыта.")
    }
}



// Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания

func subtractNums<T: Numeric>(x: T, y: T) -> T {
    x - y
}

print(subtractNums(x: 45, y: 12.1))
