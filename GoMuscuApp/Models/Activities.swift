//
//  Activities.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import Foundation
import UIKit


struct Activity: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var length: Int
    var calparHour: Int    
}


extension Activity {
    static let sampleData: [Activity] =
    [
        Activity(
            title: "Running",
            icon: "figure.run",
            length: 25,
            calparHour: 200
         ),
    ]
    
    static func initData() -> [Activity] {
        return [
            Activity(
                title: "Run",
                icon: "figure.run",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Cycle",
                icon: "figure.outdoor.cycle",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Swim",
                icon: "figure.pool.swim",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Volley",
                icon: "figure.volleyball",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Bad",
                icon: "figure.badminton",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Padel",
                icon: "figure.tennis",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Stretch",
                icon: "figure.cooldown",
                length: 25,
                calparHour: 200
             ),
            Activity(
                title: "Muscu",
                icon: "figure.strengthtraining.traditional",
                length: 25,
                calparHour: 200
             ),
        ]
    }
}
