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
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
        .padding(.horizontal, 30)
      Text(String(game.target))
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
      .padding()
      Button("Hit me".uppercased()) {
        alertIsVisible = true
      }
      .padding(
        20.0)
      .background(
        Color(.blue)
      )
      .foregroundColor(
        .white)
      .cornerRadius(21.0)
      .bold()
      .font(.title3)
      .alert(
        "Hello there!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Awesome") {
            print("Alert closed")
          }
        },
        message: {
          let roundedValue = Int(sliderValue.rounded())
          Text("""
            The slider's value is \(roundedValue).
            You scored \(game.points(sliderValue: roundedValue)) points this round.
            """)
        }
      )
    }
  }
}

#Preview {
  ContentView()
}

