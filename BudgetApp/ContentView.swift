import SwiftUI

struct ContentView : View {
    @State private var isSoundEnabled = true
    @State private var selectedMode = "عادي"
    let modes = ["هادئ", "عادي", "قوي"]
    
    var body: some View {
        VStack(spacing : 25){
            Text("إعدادات الصوت 🔊")
                .font(.largeTitle)
                .bold()
            Toggle("تفعيل الصوت ",isOn: $isSoundEnabled)
                .padding(.horizontal)
            
            if isSoundEnabled{
                Picker("اختر النمط",selection: $selectedMode){
                    ForEach(modes,id: \.self){ mode in
                        Text(mode).tag(mode)
                    }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    Text("النمط الحالي : \(selectedMode)")
            
            
            }else {
                Text("الصوت مكتوم حالياً 🔇")
                    .foregroundColor(.red)
                
            }
            Spacer()
        }
        .padding(.top,50)
    }
}
#Preview {
    ContentView()
}
