import SwiftUI

struct ContentView : View {
    @State private var isDarkMode = false
    @State private var fontStyle = "عادي"
    @State private var fontSize : Double = 16.0
    let fonts = ["عادي", "عريض", "عنوان"]
    var body: some View {
        VStack(spacing : 25){
            Text("إعدادات القراءة 📖")
                .font(.largeTitle)
                .bold()
            
            Toggle("الوضع الداكن",isOn: $isDarkMode)
                .padding(.horizontal)
            
            Picker("نوع الخط",selection: $fontStyle){
                ForEach(fonts ,id: \.self){ font in
                    Text(font).tag(font)
                    
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            Slider(value : $fontSize , in: 12...32)
                .padding(.horizontal)
            Text("حجم الخط المحدد : \(Int(fontSize))")
            
            Text("هذا النص لتجربة الإعدادات 📝")
                .font(.system(size: fontSize)) // يتغير حجمه تلقائياً مع الـ Slider
                .foregroundColor(isDarkMode ? .white : .black)
                .padding()
                .background(isDarkMode ? Color.black : Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            Spacer()
            
            
            
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
