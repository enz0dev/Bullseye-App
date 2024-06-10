//
//  ContentView.swift
//  Bullseye
//
//  Created by Vince Harding on 08/06/2024.
//

import SwiftUI

// we are defining a template for an instance called ContentView that is a View
struct ContentView: View {
  // we are defining a computed property called body. body is a property of type some View
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      Text("67")
        .font(.largeTitle)
        .kerning(-1)
        .fontWeight(.black)
      HStack {
        Text("0")
          .bold()
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button("Hit me") {
        
      }
    }
  }
}

#Preview {
  ContentView()
}
