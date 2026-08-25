import SwiftUI

struct ContentView : View {
    
    @State private var isPowerSaving = false
    
    var body: some View {
        
        VStack (spacing : 25) {
            
            Text ("بطارية الجهاز 🔋")
                .font(.largeTitle)
                .bold()
            
            Toggle ("تفعيل وضع توفير الطاقة" , isOn: $isPowerSaving)
                .padding(.horizontal)
            
            if isPowerSaving {
                
                Text ("وضع توفير الطاقة مفعل ⚡️")
                    .font(.title3)
                    .foregroundColor(.yellow)
                
            } else {
                
                Text ("الوضع العادي 🔋")
                    .font(.title3)
                    .foregroundColor(.green)
                
            }
            Spacer()
        }
        .padding(.top,50)
        .preferredColorScheme(isPowerSaving ? .dark : .light)
    }
}
#Preview {
    ContentView()
}
