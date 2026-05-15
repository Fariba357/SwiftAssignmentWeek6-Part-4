enum BMIResult {
    case UNDERWEIGHT
    case NORMAL
    case OVERWEIGHT
}
class Person {
    var age: Int
    var gender: String
    var weight: Double
    var height: Double
    init(age: Int, gender: String, weight: Double, height: Double) {
        self.age = age
        self.gender = gender
        self.weight = weight
        self.height = height
    }
    func calculateBMI() -> BMIResult {
        let bmi = weight / (height * height)
        
        if bmi < 18.5 {
            return .UNDERWEIGHT
        } else if bmi < 24.9 {
            return .NORMAL
        } else {
            return .OVERWEIGHT
        }
    }
}
// Simulated user input (like filling fields and pressing a button)
let person = Person(age: 25, gender: "Female", weight: 55.0, height: 1.65)
let bmiResult = person.calculateBMI()
// Display result with color-coded messages
switch bmiResult {
case .UNDERWEIGHT:
    print("\u{001B}[0;31mYou are underweight\u{001B}[0;0m") // Red
case .NORMAL:
    print("\u{001B}[0;32mYour weight is normal\u{001B}[0;0m") // Green
case .OVERWEIGHT:
    print("\u{001B}[0;31mYou are overweight\u{001B}[0;0m") // Red
}
