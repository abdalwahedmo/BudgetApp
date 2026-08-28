import SwiftUI
struct ContentView : View {
    @State private var isAlarmOn = true
    @State private var alarmTone = "رادار"
    @State private var volume : Double = 70.0
    
    let tones = ["رادار", "كلاسيك", "طبيعة"]
    var body: some View {
        
        VStack(spacing : 25){
            Text("إعدادات المنبه ⏰")
                .font(.largeTitle)
                .bold()
            
            Toggle("تفعيل المنبه",isOn: $isAlarmOn)
                .padding(.horizontal)
            
            Picker("النغمة",selection: $alarmTone){
                ForEach(tones,id: \.self){ ton in
                    Text(ton).tag(ton)
                    
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            Slider(value: $volume ,in: 0...100)
                .padding(.horizontal)
            
            Text("مستوى الصوت : \(Int(volume))")
            Text("الحالة: \(isAlarmOn ? "مفعل 🔔" : "معطل 🔕") | النغمة: \(alarmTone)")
            
            Spacer()
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
