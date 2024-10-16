//
//  PointsView.swift
//  Bullseye
//
//  Created by Vince Harding on 09/07/2024.
//

import SwiftUI

struct PointsView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  

  var body: some View {
    let roundedValue = Int(sliderValue.rounded())
    let points = game.points(sliderValue: roundedValue)
    
    VStack(spacing: 10) {
      InstructionText(text: "THE SLIDER'S VALUE IS")
      BigNumberText(text: String(roundedValue))
      BodyText(text: "You scored \(points) points\n 🎉🎉🎉")
      Button(action: {
        withAnimation {
          alertIsVisible = false          
        }
        game.startNewRound(points: points)
      }, label: {
        ButtonText(text: "Start New Round")
      })
    }
      .padding()
      .frame(maxWidth: 300)
      .background(Color("BackgroundColor"))
      .cornerRadius(21)
      .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
  }
}


struct PointsViewPreview: PreviewProvider {
  static private var alertIsVisible = Binding.constant(false)
  static private var sliderValue = Binding.constant(50.0)
  static private var game = Binding.constant(Game())
  
  static var previews: some View {
  PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
  PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
    .preferredColorScheme(.dark)
    .previewInterfaceOrientation(.landscapeRight)
  }
}




