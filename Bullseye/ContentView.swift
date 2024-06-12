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
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50
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
        Slider(value: $sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button("Hit me") {
        alertIsVisible = true
      }
      .alert(
        "Hello there!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Awesome") {
            print("Alert closed")
          }
        },
        message: {
          Text("This is my first alert!")
        }
      )
    }
  }
}

#Preview {
  ContentView()
}

