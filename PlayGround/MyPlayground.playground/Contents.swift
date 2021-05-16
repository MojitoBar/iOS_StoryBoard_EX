import UIKit
import Foundation

////var greeting = "Hello, playground"
////
////let value = arc4random_uniform(100)
////print("-->\(value)")
//
//
//// --- Tuple
//
//let coordinates = (4, 6)
//
//let x = coordinates.0
//let y = coordinates.1
//
//let coordinatedsNamed = (x: 2, y: 3)
//
//let x2 = coordinatedsNamed.x
//let y2 = coordinatedsNamed.y
//
//let (x3, y3) = coordinatedsNamed
//
//x3
//y3
//
//
//// --- Boolean
//
//let yes = true
//let no = false
//
//let IsFourGreaterThanFive = 4 > 5
//
////if IsFourGreaterThanFive {
////    print("---> 참")
////} else {
////    print("---> 거짓")
////}
//
//let a = 5
//let b = 10
//
//if a > b{
//    print("---> a가 크다")
//} else {
//    print("---> b가 크다")
//}
//
//let name1 = "Jin"
//let name2 = "Jason"
//
//let isTwoNameSame = name1 == name2
//
//
//// ---- Scope
//func hello(){
//    var hours = 50
//    let payPerHour = 10000
//    var salary = 0
//
//    if hours > 40 {
//        let extra = hours - 40
//        salary += extra * payPerHour * 2
//        hours -= extra
//    }
//
//    salary += hours * payPerHour
//
//    print(hours)
//}
//
//hello()

// ---- while loop
//var i = 10
//
//print("--- while")
//while i < 10 {
//    print(i)
//
//    if i == 5{
//        break
//    }
//
//    i += 1
//}
//
//print("--- repeat")
//repeat{
//    print(i)
//    i += 1
//} while i < 10


// ---- For Loop
//let closedRange = 0...10
//let halfClosedRange = 0..<10
//
//var sum = 0
//for i in halfClosedRange{
//    print("---> \(i)")
//    sum += i
//}
//
//print("---> total sum: \(sum)")
//
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let name = "Jason"
//
//for _ in closedRange {
//    print("---> name: \(name)")
//}


// Switch
//let num = 10
//
//switch num {
//case 0:
//    print("---> 0 입니다.")
//case 0...10:
//    print("---> 0부터 10사이 입니다.")
//default:
//    print("---> 나머지 입니다.")
//}
//
//
//let pet = "bird"
//switch pet {
//case "dog", "cat", "bird":
//    print("---> 집동물이네요?")
//default:
//    print("---> 잘 모르겠습니다.")
//}

//let num = 20
//switch num {
//case _ where num % 2 == 0:
//    print("---> 짝수")
//default:
//    print("---> 홀수 ")
//}

let coordinate = (x: 5, y: 5)

//switch coordinate {
//case (0, 0):
//    print("---> 원점이네요.")
//case (_, 0):
//    print("---> x축이네요.")
//case (0, _):
//    print("---> y축이네요.")
//default:
//    print("---> 좌표 어딘가...")
//}

switch coordinate {
case (0, 0):
    print("---> 원점이네요.")
case (let x, 0):
    print("---> x축이네요. x: \(x)")
case (0, let y):
    print("---> y축이네요. y: \(y)")
case (let x, let y) where x == y:
    print("---> x랑 y랑 같음. x: \(x) y: \(y)")
case (let x, let y):
    print("---> 좌표 어딘가... x: \(x) y: \(y)")
}
