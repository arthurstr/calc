
import SwiftUI

struct CalculatorButtonView: View {
    var button: CalculatorButton
    
    @EnvironmentObject var env: GlobalEnviroment
    
    var body: some View {
        Button {
            self.env.receiveInput(calculatorButton: button)
        } label: {
            Text(button.rawValue)
                .font(.system(size: 22))
                .frame(width: buttonWidth(button: button), height: buttonHeight() )
                .foregroundColor(button.foregroundColor)
                .background(button.backgroundColor)
                .cornerRadius(buttonWidth(button: button)/1.5)
        }
    }
    
    private func buttonWidth(button: CalculatorButton) -> CGFloat {
        
        return (UIScreen.main.bounds.width - 5 * 10) / 5
    }
    
    private func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 10) / 5
    }
}
