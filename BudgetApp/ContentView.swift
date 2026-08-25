import SwiftUI

struct ContentView : View {
    @State private var isMaintenanceMode = false
    var body: some View {
        VStack(spacing : 25) {
            Text("حالة النظام ⚙️")
                .font(.largeTitle)
                .bold()
            
            Toggle("تفعيل وضع الصيانة",isOn: $isMaintenanceMode)
                .padding(.horizontal)
            if isMaintenanceMode  {
                Text("النظام حالياً في حالة الصيانة ⚠️")
                    .foregroundColor(.orange)
            } else {
                Text("النظام يعمل بشكل طبيعي ✅")
                    .foregroundColor(.green)
                
            }
            Spacer()
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
