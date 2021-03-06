import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}


/*
//type 1
//working code with frame diffrent frame size
                Image("burger")
                    .resizable()
                    .frame(width:50,height: 50)
                    .clipShape(Circle())
*/


/*
//type 2
                Image("burger")
                    .resizable()
                    .frame(width:50,height: 50)
                    .clipShape(Circle())
*/
