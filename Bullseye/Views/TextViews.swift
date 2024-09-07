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

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct LabelText: View {
  var title: String
  
  var body: some View {
    Text(title.uppercased())
      .font(.caption)
      .bold()
      .kerning(1.5)
      .foregroundColor(Color("TextColor"))
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .multilineTextAlignment(.center)
      .font(.subheadline)
      .fontWeight(.semibold)
      .lineSpacing(12)
  }
}

struct ButtonText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .padding()
      .frame(maxWidth: .infinity)
      .multilineTextAlignment(.center)
      .font(.body)
      .bold()
      .background(
        Color.accentColor
      )
      .foregroundColor(.white)
      .cornerRadius(12.0)
  }
}

#Preview {
  VStack {
    InstructionText(text: "Instructions")
    BigNumberText(text: "999")
    SliderLabelText(text: "99")
    LabelText(title: "score")
    RoundRectTextView(text: "999")
  }
}
