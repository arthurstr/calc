import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var env: GlobalEnviroment
    
    @State var infoPresented = false
    
    let buttons: [[CalculatorButton]] = [
        [.multiply, .divide, .sqrt, .square , .log],
        [.median, .mean, .plus, .minus ],
        [.seven, .eight, .nine, .add],
        [.four, .five, .six, .backspace],
        [.one, .two, .three, .clear],
        [.factorial, .point, .zero , .ac, .equals]
    ]
    
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                Spacer()
                
                ArrayDisplayView(env: _env)
                DisplayFieldView(env: _env)
                
                ForEach(buttons, id: \.self){ row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self){ button in
                            CalculatorButtonView(button: button)
                        }
                    }
                }
                
            }
            .padding(.bottom)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnviroment())
    }
}
