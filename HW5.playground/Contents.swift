import UIKit
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfbAnnd3DvDVyB4181e33ZfDP4A_yezovpuvo49fqZ6MPsUSw/viewform)

//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let resultOfGame = [
    "Салават Юлаев" : ["3:6", "5:5"],
    "Авангард" : ["2:1", "2:3"],
    "АкБарс" : ["3:3", "1:2"]
]
for (keys, values) in resultOfGame {
    for result in values {
    print("Игра с \(keys) - \(result)")
    }
}
/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */

var calendar = Calendar.current
func getDate(dayOfBirth: Int, monthOfBirth: Int, yearOfBirth: Int) -> (daydiff:Int, monthdiff:Int, yeardiff:Int) {
    let date = Date()
    let day = calendar.component(.day, from: date)
    let month = calendar.component(.month, from: date)
    let year = calendar.component(.year, from: date)
    let daydiff = day - dayOfBirth
    let monthdiff = month - monthOfBirth
    let yeardiff = year - yearOfBirth
    return (daydiff, monthdiff, yeardiff)
    }
let result = getDate(dayOfBirth: 5, monthOfBirth: 8, yearOfBirth: 1993)
print("C момента моего рождения прошло \(result.yeardiff) лет, \(result.monthdiff) месяцев и \(result.daydiff) дней")

/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
func getSumOfMoney(fifty :Int, hundred: Int, fivehundred:Int, thousand: Int, twothousand: Int, fivethousand: Int) -> (Int) {
    var sum = 0
    sum = (fifty * 50) + (hundred * 100) + (fivehundred * 500) + (thousand * 1000) + (twothousand * 2000) + (fivethousand * 5000)
    return sum
}

//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
var sumInPocket = getSumOfMoney(fifty: 0, hundred: 0, fivehundred: 4, thousand: 0, twothousand: 0, fivethousand: 13)
print("В моем кармане \(sumInPocket) рублей")


/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */

func evenOrOddNunber (number: Int) -> Bool {
    if (number % 2 == 0) {
        return true
    } else {
        return false
    }
    }
var res = evenOrOddNunber(number: 0)

/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/
func dividedbythree (number: Int) -> Bool {
    if number % 3 == 0 {
        return true
    } else {
        return false
    }
    }
var res1 = dividedbythree(number: 15)
/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
// не понимаю в чем ошибка, код заккоментила. Ошибка в 105 строке
/*
func increasingArray (x: Int, y: Int) -> [Int] {
    if y < x {
        print("Введите другой мнтервал")
    } else {
        var myArray = [Int]()
    for i in x...y {
        myArray.append(i)
    }
    return myArray
    }
}
var result2  = increasingArray(x: 4, y: 7) // я не понимаю в чем ошибка
*/
/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
/*
var output  = increasingArray(x: 1, y: 100) // функция не работает, массив не выведится
*/
/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */


/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1900, функция возвратит 20. Для 1899 возвратит 19
 */
func centuryFromYear(year: Int) -> Int {
var century = year
    if century % 100 == 0 {
        century = century / 100
    } else {
        century = century / 100 + 1
        }
return century
}
var res4 = centuryFromYear(year: 2000)
/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
