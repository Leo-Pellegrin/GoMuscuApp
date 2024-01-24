//
//  DailyStatsView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 24/01/2024.
//

import SwiftUI

struct DailyStatsView: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer()
            StatBar(
                color: Color(hex: 0x8CB2BE),
                lastworkout: Workout.sampleData[0],
                icon: "flame",
                title: "Calories"
            )
            Spacer()
            StatBar(
                color: Color(hex: 0x6DAD7F),
                lastworkout: Workout.sampleData[0],
                icon: "clock",
                title: "Time"
            )
            Spacer()

        }
    }
}

#Preview {
    DailyStatsView()
}
