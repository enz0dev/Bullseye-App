//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Vince Harding on 26/06/2024.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(
      Color("BackgroundColor")
        .ignoresSafeArea()
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      RoundedImageView(systemName: "arrow.counterclockwise")
      Spacer()
      RoundedImageView(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  var title: String
  var text: String
  
  var body: some View {
    VStack(spacing: 5) {
      LabelText(title: title)
      
      ZStack {
        RoundedRectangle(cornerRadius: 21.0)
          .fill(Color("ButtonFilledBackgroundColor"))
          .frame(width: 68.00, height: 55.78)
          .overlay(
            RoundedRectangle(cornerRadius: 21.0)
              .strokeBorder(Color("AccentColor"), lineWidth: 3.0)
          )
        RoundRectTextView(text: text)
      }
    }
  }
}


struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    
    HStack {
      
      NumberView(title: "Score", text: String(game.score))
      Spacer()
      NumberView(title: "Round", text: String(game.round))
    }
  }
}

#Preview {
  BackgroundView(game: .constant(Game()))
}
