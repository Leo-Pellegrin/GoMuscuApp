//
//  Stats.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 23/01/2024.
//

import Foundation

struct Stats: Identifiable{
    var id = UUID()
    var activity: Activity
    var startDate: Date?
    var endDate: Date?
}
