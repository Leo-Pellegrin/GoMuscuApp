//
//  HomeView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var dailyGoals: [DailyGoal] = DailyGoal.initData()

    var body: some View {
        DailyGoalsView(dailyGoal: $dailyGoals)
    }
}

#Preview {
    HomeView()
}
