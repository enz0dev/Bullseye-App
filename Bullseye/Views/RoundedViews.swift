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
          .fill(Color("ButtonFilledBackgroundColor"))
          .frame(width: 56, height: 56)
          .overlay(
            Circle()
              .strokeBorder(Color("AccentColor"), lineWidth: 5.0)
          )
        Image(systemName: systemName)
          .font(.title)
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

#Preview {
  previewView()
}

