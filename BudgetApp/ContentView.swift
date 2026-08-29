import SwiftUI

struct ContentView : View {
    @State private var isVIP = false
    @State private var selectedEvent = "عيد ميلاد"
    @State private var eventDate = Date()
    @State private var guestCount : Double = 10
    @State private var cardColor : Color = .purple
    
    let events = ["عيد ميلاد", "زفاف", "تخرج"]
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            VStack(spacing : 20){
                Text ("مُصمم الدعوات 🎈")
                    .font(.title)
                    .bold()
                
                VStack(alignment : .leading,spacing: 10){
                    Text ("المناسبة  : \(selectedEvent)")
                        .font(.headline)
                    Text("نوع الدعوة: \(isVIP ? "دعوة خاصة VIP 🌟" : "دعوة عامة ✉️")")
                        .font(.subheadline)
                    Text ("عدد الضيوف : \(Int(guestCount)) شخص")
                        .font(.subheadline)
                    
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(cardColor)
                .cornerRadius(15)
                .padding(.horizontal)
                
                VStack(spacing : 15){
                    Toggle("دعوة خاصة VIP؟ ",isOn: $isVIP)
                    Divider()
                    
                    Picker("نوع المناسبة",selection: $selectedEvent){
                        ForEach(events ,id: \.self){ event in
                            Text(event).tag(event)
                                
                            
                        }
                    }
                    .pickerStyle(.segmented)
                    Divider()
                    
                    DatePicker("تاريخ المناسبة",selection: $eventDate ,displayedComponents: .date)
                    Divider()
                    VStack(alignment : .leading){
                        Text("عدد الضيوف: \(Int(guestCount))")
                            .font(.subheadline)
                        Slider(value: $guestCount, in: 5...100, step: 5)
                    }
                    Divider()
                    ColorPicker("لون البطاقة", selection: $cardColor)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top,40)
        }
        
    }
}
#Preview {
    ContentView()
}
