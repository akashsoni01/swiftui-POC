import SwiftUI

struct Cource:Codable{
    let name,imageURL:String
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            List([
                Cource(name: "akash", imageURL: "www.google.com"),
                Cource(name: "akash", imageURL: "www.google.com"),
                Cource(name: "akash", imageURL: "www.google.com"),
                Cource(name: "akash", imageURL: "www.google.com")
            ], id: \.name){
                Text($0.name)
            }.navigationBarTitle("Employee")
        }
    }
}
