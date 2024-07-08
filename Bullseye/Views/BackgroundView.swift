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
      RingsView()
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      Button(
        action: {
          game.restart()
        }, label: {
          RoundedImageView(systemName: "arrow.counterclockwise")
        })
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

struct RingsView: View {
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .ignoresSafeArea()
      ForEach(1..<6) { ring in
      let size = CGFloat(ring * 100)
        Circle()
          .stroke(lineWidth: 20)
          .fill(
            RadialGradient(gradient: Gradient(colors: [Color("BackgroundRingsColor").opacity(0.3 * 0.8), Color("BackgroundRingsColor").opacity(0.0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300)
          )
          .frame(width: size, height: size)
      }
      }
  }
}

#Preview {
  BackgroundView(game: .constant(Game()))
}
