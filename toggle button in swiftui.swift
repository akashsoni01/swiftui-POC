import SwiftUI

struct ContentView: View {
    @State private var isShowing = true
    var body: some View {
        VStack{
            Text("state... \(isShowing ? "true" : "false")")
            Toggle(isOn: $isShowing) {
                return Text("Animate Indicator")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
