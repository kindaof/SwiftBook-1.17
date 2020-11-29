import UIKit


//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLScqx-buXGfB6bpfXQyxpL7U5k6XtSFRwos2f8f-mKhqwiXY_w/viewform)

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */
class Orange {
    var color = ""
    var taste = ""
    var radius = 0.0
    
    var orangeVolume = 0.0
    
    init() {} // код нужен для осуществеления п.1.3 - хз зачем
    
    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
    
    func calculateOrangeVolume() {
        orangeVolume = 4 / 3 * Double.pi * pow(radius, 3)
        print("Объём апельсина составляет \(orangeVolume)")
    }
}

let someOrange = Orange()

someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.radius = 95

print("Orange has \(someOrange.color) color and \(someOrange.taste) taste")

someOrange.calculateOrangeVolume()

print(Int(someOrange.orangeVolume))
//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`
// cм. п. 1.1
/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */
// cм. п. 1.1
//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
// cм. п. 1.1

//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль
    // cм. п. 1.1
/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */
// cм. п. 1.1
/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 */
struct Car {
    var name: String
    var productionYear: Int
    var housePower: Int
}
var honda = Car(name: "Honda", productionYear: 2000, housePower: 200)
var hondaCivic = honda
hondaCivic.name = "Maibah"

for _ in 1...5 {
    hondaCivic.housePower += 1
}

print("Мощность дыигателя \(honda.name) составляет \(honda.housePower) л.с. ")
print("Мощность дыигателя \(hondaCivic.name) составляет \(hondaCivic.housePower) л.с. ")
//: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
// сделала в п.2.1.


//: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
// сделала в п.2.1.

//: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`
// сделала в п.2.1.


//: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу

// сделала в п.2.1.

//: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."

// сделала в п.2.1.
 
/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед

 3.4 Вызвите данный метод из экземпляра структуры
  */
struct PlayerInChess {
    var name: String
    var wins: Int
    
    func description () {
        print("Игрок по имени \(name) имеет \(wins) побед")
    }
    mutating func addWins(countOfWins: Int) { // mutating нужен если мы ВНУТРИ структуры меняем значения свойств
        wins += countOfWins
    }
    
}
var player1 = PlayerInChess(name: "Alex", wins: 5)
player1.description()
player1.addWins(countOfWins: 10)
player1.description()
/*:
3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.

3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/
// сделала в п. 3.1


/*:
 ## Задание 4
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    var name = ""
    var surname = ""
    var salary = 0
    
    init() {}
    
    init(name: String, surname: String, salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}
//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*
var names = ["Hohn", "Aaron", "Tim", "Ted", "Steven"]
var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employess = [String] ()



//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»


//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4

