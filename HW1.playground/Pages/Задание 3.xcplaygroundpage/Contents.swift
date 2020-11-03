import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
var cathetusOne = 8.0
var cathetusTwo = 6.0
var powerValue: Double = 2
var Double = pow(cathetusOne,powerValue) + pow(cathetusTwo,powerValue)
var hypotenuse = sqrt(Double)
var Square = cathetusOne * cathetusTwo * 0.5
var Perimeter = cathetusOne + cathetusTwo + hypotenuse
print("Площадь треугольника равна \(Square), а периметр равен \(Perimeter)")

