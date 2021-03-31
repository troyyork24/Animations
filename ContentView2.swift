//
//  Content2.swift
//  Animations
//
//  Created by Troy York on 3/31/21.
//

import SwiftUI

struct ContentView2: View {
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 10, damping: 10)) {
                self.animationAmount += 360

            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(
            .degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct Content2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
