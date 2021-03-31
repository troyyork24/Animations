//
//  ContentView.swift
//  Animations
//
//  Created by Troy York on 3/27/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Tap Me") {
            //self.animation += 1
        }
        .padding(40)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
            .stroke(Color.red)
            .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(Animation.easeOut(duration: 1)
                            .repeatForever(autoreverses: false)
                )
        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
