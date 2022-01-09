//
//  ContentView.swift
//  Memorize
//
//  Created by Fredrik Öller on 2022-01-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            let text = Text("💩").font(.largeTitle)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: 3)
                text
            } else {
                shape
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
