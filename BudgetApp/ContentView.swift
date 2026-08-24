import SwiftUI

struct ContentView : View {
    
    @State private var wish = ""
    var body: some View {
        VStack(spacing : 25){
            
            Text("أمنية السفر ✈️")
                .font(.largeTitle)
                .bold()
            
            TextField("اكتب المكان الذي تتمنى زيارته...",text: $wish)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            if !wish .isEmpty{
                Text("تتمنى زيارة: \(wish)")
                    .font(.title2)
                    .foregroundColor(.blue)
                
                Text("عدد الحروف المكتوبة:\(wish.count)")
                    .font(.caption)
                    .foregroundStyle(wish.count > 10 ?.red : .gray)
                Button("مسح"){
                    wish = ""
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
            }
            Spacer()
        }
        .padding(.top,50)
    }
}
#Preview {
    ContentView()
}
