
import SwiftUI

struct DisplayFieldView: View {
    
    @EnvironmentObject var env: GlobalEnviroment
    
    var body: some View {
        HStack {
            Text(env.display)
                .frame(width: UIScreen.main.bounds.width - 20, height: 80, alignment: .trailing)
                .foregroundColor(.white)
                .font(.system(size: 64))
                .minimumScaleFactor(0.1)
                .lineLimit(1)
                .contextMenu(ContextMenu(menuItems: {
                    Button("Copy", action: {
                        UIPasteboard.general.string = env.display
                    })
                    Button("Delete whole field", action: {
                        env.display = ""
                    })
                }))
        }.padding(.bottom)
            .gesture(DragGesture(minimumDistance: 3.0)
                .onEnded { value in
                    print(value.translation)
                    switch(value.translation.width, value.translation.height) {
                    case (...0, -230...230):
                        env.display.removeLast()
                    default:
                        break
                    }
                }
            )
    }
}
