//
//  ContentView.swift
//  Bullseye
//
//  Created by Vince Harding on 08/06/2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      Text("67")
      HStack {
        Text("0")
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
      }
      Button("Hit me") {
        
      }
    }
  }
}

#Preview {
  ContentView()
}
