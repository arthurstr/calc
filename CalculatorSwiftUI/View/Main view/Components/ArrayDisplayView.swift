
import SwiftUI

struct ArrayDisplayView: View {
    
    @EnvironmentObject var env: GlobalEnviroment
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(env.storedNumbers, id: \.self) { number in
                    Text(String(number))
                        .font(.system(size: 30))
                        .background(Color(.darkGray))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .contextMenu(ContextMenu(menuItems: {
                            Button("Copy", action: {
                                UIPasteboard.general.string = env.display
                            })
                            Button("Delete", action: {
                               if let index = env.storedNumbers.firstIndex(of: number) {
                                    env.storedNumbers.remove(at: index)
                                }
                            })
                        }))
                }
                
            }
        }
    }
}
