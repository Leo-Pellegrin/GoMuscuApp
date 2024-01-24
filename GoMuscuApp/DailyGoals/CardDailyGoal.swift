//
//  CardDailyGoal.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct CardDailyGoal: View {
    let dailygoal: DailyGoal
    
    var body: some View {
        VStack {
            CircularProgressView(progress: getProgress())
                .frame(width: 30, height: 30)
            Text(dailygoal.day.rawValue.prefix(3))
                .padding(.top, 5)
                .foregroundStyle(Color.primary)
        }
    }
    
    func getProgress() -> Double{
        return Double(dailygoal.lengthCompleted) / Double(dailygoal.lengthGoal)
    }
}

struct CardDailyGoal_Previews: PreviewProvider {
    static var previews: some View {
        let dailygoal = DailyGoal.sampleData[0]
        CardDailyGoal(dailygoal: dailygoal)
            .background(dailygoal.theme.mainColor)
            .previewLayout(.fixed(width: 60, height: 100))
    }
}
