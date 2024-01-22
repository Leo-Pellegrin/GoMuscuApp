//
//  CircularProgressView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct CircularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke( // 1
                    Color.gray.opacity(0.5),
                    lineWidth: 7
            )
            Circle() // 2
                .trim(from: 0, to: progress) // 1
                .stroke(
                    Color.green,
                    // 1
                    style: StrokeStyle(
                        lineWidth: 7,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
        }
    }
}

#Preview {
    CircularProgressView(progress: 0.25)
}
