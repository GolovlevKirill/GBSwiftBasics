//Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками
struct Employee {
    var name: String
    var salary: Int
    var workPosition: WorkPosition
    
    enum WorkPosition {
        case coocker
        case cashier
    }
}


//Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе

class Table {
    var seats: Int
    
    func isAvalibleSeats(guests: Int) -> Bool {
        if (guests <= seats) {
            return true
        } else {
            return false
        }
    }
    
    // создаем слабую ссылку
    weak var pizzeria: Pizzeria?
    init(pizzeria: Pizzeria, seats: Int) {
        self.seats = seats
    }
}


//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра


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
    var employees: [Employee]
    var menuItems: [MenuItem]
    var tables: [Table] = [] //Здесь создаем пустой масив "столов" чтобы в инциализаторе инциализировать то колличество столов, которое необходимо
    
    init(employees: [Employee], menuItems: [MenuItem], numOfTables: Int) {
        self.employees = employees
        self.menuItems = menuItems
        
      for _ in 1...numOfTables {
            tables.append(Table(pizzeria: self, seats: 3))
        }
    }
    
    func addNewMenuItem(menuNewItem: MenuItem) {
        menuItems.append(menuNewItem)
    }
}
protocol MenuItem {
    var cost: Int { get set }
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
