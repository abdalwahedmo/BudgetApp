import SwiftUI

struct ContentView : View {
    @State private var country = ""
    var body: some View {
        VStack(spacing : 25){
            Text("الدولة المفضلة 🌍")
                .font(.largeTitle)
                .bold()
            
            TextField("ادخل دولتك المفضلة ...",text: $country)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            if !country .isEmpty {
                Text("دولتك المفضلة هي : \(country)")
                    .font(.title2)
                    .foregroundColor(.indigo)
                
                Button("مسح"){
                    country = ""
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            Spacer()
        }
        .padding(.top,50)
        
    }
}
#Preview {
    ContentView()
}
