//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Vince Harding on 24/06/2024.
//

import SwiftUI

struct RoundedImageView: View {
  var systemName: String
  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color("AccentColor"))
        .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
        .overlay(
          Circle()
            .strokeBorder(Color("AccentColor"), lineWidth: Constants.General.strokeWidth)
        )
      Image(systemName: systemName)
        .font(.title)
        .bold()
        .foregroundColor(Color("ButtonFilledTextColor"))
    }
  }
}

struct previewView: View {
  var body: some View {
    
    HStack(spacing: 10) {
      RoundedImageView(systemName: "arrow.counterclockwise")
      RoundedImageView(systemName: "list.dash")
      RoundRectTextView(text: "99")
      RoundedTextView(text: "1")
    }
  }
}

struct RoundRectTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.title3)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("ButtonFilledTextColor"))
  }
}

struct RoundedTextView: View {
  var text: String
  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color("BackgroundColor"))
        .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
        .overlay(
          Circle()
            .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
        )
      Text(text)
        .font(.title3)
        .bold()
        .foregroundColor(Color("ButtonFilledTextColor"))
    }
  }
}

  
#Preview {
previewView()
}

