//
//  HomeView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var dailyGoals: [DailyGoal] = DailyGoal.initData()
    @State private var activities: [Activity] = Activity.initData()
    @State private var lastWorkout: Workout = Workout.sampleData[0]
    @State private var workout: [Workout] = []

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    DailyStatsView()
                        .padding(.bottom, -30)
                    DailyGoalsView(dailyGoal: $dailyGoals)
                        .alignmentGuide(.top) { $0[.bottom] }
                    
                    ActivitiesView(activities: $activities)
                        .padding(.top, 10)

                    LastWorkoutView(lastworkout: lastWorkout)
                        .padding(.top, 10)
                }
                .padding()
            }
            .navigationBarItems(leading: HStack {
                Text("Activités")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.leading) // Ajustez le padding comme nécessaire
            })
        }
    }
}

#Preview {
    HomeView()
}
