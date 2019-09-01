struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: DetailContentView()) {
                    Text("Show Detail View")
                }.navigationBarTitle("Navigation")
            }
        }
    }
}

struct DetailContentView: View {
    var body: some View {
        Text("hello")
    }
}
