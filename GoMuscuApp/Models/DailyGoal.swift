//
//  DailyGoal.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import Foundation

enum days: String{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

struct DailyGoal {
    var title: String
    var day: days
    var lengthGoal: Int
    var lengthCompleted: Int
    var theme: Theme
}


extension DailyGoal {
    static let sampleData: [DailyGoal] =
    [
        DailyGoal(title: "DailyGoalMonday",
                    day: .Monday,
                    lengthGoal: 30,
                    lengthCompleted: 0,
                    theme: .sky
                 ),
        DailyGoal(title: "DailyGoalTuesday",
                  day: .Tuesday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .sky
        ),
        DailyGoal(title: "DailyGoalWednesday",
                  day: .Wednesday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .sky
        ),
        DailyGoal(title: "DailyGoalThursday",
                  day: .Thursday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .sky
        ),
        DailyGoal(title: "DailyGoalFriday",
                  day: .Friday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .purple
        ),
        DailyGoal(title: "DailyGoalSaturday",
                  day: .Saturday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .orange
        ),
        DailyGoal(title: "DailyGoalSunday",
                  day: .Sunday,
                  lengthGoal: 30,
                  lengthCompleted: 0,
                  theme: .sky
        ),
    ]
}
