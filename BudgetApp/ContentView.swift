import SwiftUI

struct ContentView : View {
    @State private var meal = ""
    
    var body: some View {
        
        VStack(spacing:25){
            
            Text("وجبة اليوم 🍽️")
                .font(.largeTitle)
                .bold()
            
            TextField("اكتب وجبتك المفضلة ...", text: $meal)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("وجبتك المفضلة لليوم هي :\(meal)")
                .font(.title2)
                .foregroundColor(.indigo)
            Button("مسح"){
                meal = ""
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
            Spacer()
        }
        .padding(.top,50)
    }
}
#Preview {
    ContentView()
}
