//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Vince Harding on 17/10/2024.
//

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    RowView(index: 1, score: 10, date: Date())
  }
}

struct RowView: View {
  let index : Int
  let score : Int
  let date : Date
  
  var body: some View {
    HStack {
      Slider(value: .constant(50))
        .padding()
    }
    .background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.horizontal)
    .frame(maxWidth: 480)
  }
}


#Preview {
  LeaderboardView()
}
