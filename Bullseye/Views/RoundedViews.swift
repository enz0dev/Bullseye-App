//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Vince Harding on 24/06/2024.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56, height: 56)
  }
}
struct previewView: View {
  var body: some View {
    
    HStack(spacing: 250) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewStroked(systemName: "list.dash")
    }
  }
}

#Preview {
  previewView()
}

#Preview {
  previewView()
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
