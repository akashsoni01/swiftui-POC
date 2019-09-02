//
//  ContentView.swift
//  Service-hit-swiftui
//
//  Created by Akash Soni on 02/09/19.
//  Copyright © 2019 Akash Soni. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}


struct ContentView: View {
    var body: some View {
        VStack{
            Text("Loding...")
            ActivityIndicator(isAnimating: .constant(true), style: UIActivityIndicatorView.Style.large)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
