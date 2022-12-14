
import Foundation
import SwiftUI

enum CalculatorButton: String {
    
    case zero = "0",
         one = "1",
         two = "2",
         three = "3",
         four = "4",
         five = "5",
         six = "6",
         seven = "7",
         eight = "8",
         nine = "9",
         point = ".",
         ac = "AC",
         median = "Median",
         mean = "Mean",
         backspace = "\u{232B}",
         add = "Add",
         clear = "C",
         plus = "+",
         minus = "-",
         equals = "=",
         multiply = "×",
         divide = "÷",
         sqrt = "√",
         square = "^",
         log = "log",
         factorial = "!"
    
    var backgroundColor: Color {
        switch self {
        case .median, .mean:
            return .orange
        case .ac, .clear, .add, .backspace, .plus , .minus, .equals:
            return Color(.lightGray)
        default:
            return Color(.darkGray)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .median, .mean:
            return .black
        default:
            return .white
        }
    }
    
}

extension CalculatorButton: Identifiable {
    var id: Self { self }
}
