struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List{
                Image("img")
                    .resizable()
                    .frame(width: nil, height: 300, alignment: .center)
                    .scaledToFill()
                    .clipped()
                    //To extend the photo to the edges of the display, you can call listRowInsets and set its value to EdgeInsets(). Update the Image like this:
                    .listRowInsets(EdgeInsets())
                VStack(alignment: .leading, spacing: 10, content: {
                    LableTextField(label: "Name", placeHolder: "Enter Your Name")
                    LableTextField(label: "Type", placeHolder: "Enter Your Type")
                    LableTextField(label: "Address", placeHolder: "Enter Your Adress")
                    LableTextField(label: "Phone", placeHolder: "Enter Your Phone Number")
                    LableTextField(label: "Discription", placeHolder: "Enter Your Discription")
                })
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                RoundedButton(buttonTitle: "Save")
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                
            }
            .listRowInsets(EdgeInsets())
            .navigationBarTitle(Text("test"))
            .navigationBarItems(trailing:
                Button(action: {
                    
                }, label: {Text("Cancel")})
            )
        }
    }
}


struct LableTextField: View {
    var label:String
    var placeHolder:String
    var imageTitle:String = "form"
    @State var text:String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HStack(alignment: .center, spacing: 8, content: {
                Image("form")
                Text(label)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            })
            
            TextField(placeHolder, text: $text)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                .background(Color(.systemGray5))
                .cornerRadius(5)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        )
        
    }
}


struct RoundedButton:View{
    var buttonTitle:String
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack{
                Spacer()
                Text(buttonTitle)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
            }
        })
            .background(Color(.red))
            .cornerRadius(10)
            .padding(EdgeInsets())
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            //ContentView()
            ContentView().previewLayout(.fixed(width: 375, height: 1000))
            RoundedButton(buttonTitle: "Save").previewLayout(.sizeThatFits)
        }
    }
}
