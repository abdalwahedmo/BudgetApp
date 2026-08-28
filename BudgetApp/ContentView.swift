import SwiftUI

struct ContentView : View {
    
    @State private var isPowerOn = true
    @State private var pictureMode = "قياسي"
    @State private var brightness : Double = 50.0
    let modes = ["قياسي", "سينما", "ألعاب"]
    var body: some View {
        VStack(spacing : 25){
            Text("إعدادات التلفاز 📺")
                .font(.largeTitle)
                .bold()
            
            Toggle("تشغيل الشاشة",isOn: $isPowerOn)
                .padding(.horizontal)
            
            Picker("نمط الصورة",selection: $pictureMode){
                
                ForEach(modes,id: \.self){ mode in
                    Text(mode).tag(mode)
                    
                    
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            Slider(value:$brightness,in: 0...100)
                .padding(.horizontal)
            
            Text("مستوى الاضادة : \(Int(brightness))")
            Text("الطاقة: \(isPowerOn ? "يعمل 🟢" : "مغلق 🔴") | النمط: \(pictureMode)")
            Spacer()
            
            
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
