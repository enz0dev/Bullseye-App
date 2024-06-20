//
//  TextViews.swift
//  Bullseye
//
//  Created by Vince Harding on 20/06/2024.
//

import SwiftUI

struct InstructionText: View {
  var body: some View {
    Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .padding(.horizontal, 30)
      .foregroundColor(Color("TextColor"))
  }
}

#Preview {
  InstructionText()
}
