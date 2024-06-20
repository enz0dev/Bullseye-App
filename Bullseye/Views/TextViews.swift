//
//  TextViews.swift
//  Bullseye
//
//  Created by Vince Harding on 20/06/2024.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.largeTitle)
      .kerning(-1)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

#Preview {
  VStack {
    InstructionText(text: "Instructions")
    BigNumberText(text: "999")
  }
}
