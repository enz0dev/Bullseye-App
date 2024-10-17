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

#Preview {
  LeaderboardView()
}
