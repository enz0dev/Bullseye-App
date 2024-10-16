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
        .frame(width: 56, height: 56)
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
    
    HStack(spacing: 250) {
      RoundedImageView(systemName: "arrow.counterclockwise")
      RoundedImageView(systemName: "list.dash")
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

#Preview {
  VStack {
    previewView()
    RoundRectTextView(text: "99")
  }
}

