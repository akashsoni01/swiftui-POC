//
//  ContentView.swift
//  Service-hit-swiftui
//
//  Created by Akash Soni on 02/09/19.
//  Copyright © 2019 Akash Soni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pop = false
    var body: some View {
        VStack{
            Text("present").sheet(isPresented: $pop) {
                GroupView()
            }.onTapGesture {
                self.pop = true
            }
        }
    }
}
struct GroupView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("test")
        }.frame(width:100,height: 180)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
