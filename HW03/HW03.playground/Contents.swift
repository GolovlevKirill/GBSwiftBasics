//Задача 1

//Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
//Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).



enum Tea {
    case green
    case black
    case fruit
}

let teaPrices: [Tea: Int] = [.green: 101, .black: 154, .fruit: 201]
let queue: [Tea] = [.green, .black, .fruit, .green]

for (index, tea) in queue.enumerated() {
    if let price = teaPrices[tea] {
        let orderNumber = index + 1
        print("Покупатель \(orderNumber): заказал \(tea), стоимость - \(price)")
    } else {
        print("Покупатель \(index + 1): заказал неизвестный чай")
    }
}

//Задача 2
//Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.

let oldArray: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
let filteredArray = oldArray.compactMap { $0 }.filter { $0 != 0 && $0 != 4 }
let sortedArray = filteredArray.sorted()

print(sortedArray)

//Задача 3
//Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

    func generateArray(_ num: Int) -> [Int] {
    var result = [Int]()
    var value = 1
    for _ in 1...num {
        result.append(value)
        value *= 2
    }
    return result
}

let num = 5
let array = generateArray(num)
print(array)
