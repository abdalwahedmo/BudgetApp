import SwiftUI

struct ContentView : View {
    @State private var isSoundOn = true
    @State private var difficulty = "متوسط"
    @State private var playersCount = 1.0
    let levels = ["سهل", "متوسط", "صعب"]
    var body: some View {
        VStack(spacing : 25){
            Text("إعدادات اللعبة 🎮")
                .font(.largeTitle)
                .bold()
            
            Toggle("المؤثرات الصوتية",isOn: $isSoundOn)
                .padding(.horizontal)
            
            Picker("مستوى الصعوبة",selection: $difficulty){
                ForEach(levels,id: \.self){ levle in
                    Text(levle).tag(levle)
                       
                    
                    
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            Slider(value: $playersCount,in: 1...4)
                .padding(.horizontal)
            Text("عدد اللاعبين: \(Int(playersCount))")
            
            Text("الصوت: \(isSoundOn ? "مفعل 🔊" : "مكتوم 🔇") | المستوى: \(difficulty)")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
