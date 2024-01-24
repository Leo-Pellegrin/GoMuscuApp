//
//  StatBar.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 23/01/2024.
//

import SwiftUI

struct StatBar: View {
    var color: Color
    var lastworkout: Workout
    var icon: String
    var title: String
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 120, height: 250)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 70,
                            topTrailingRadius: 70
                        )
                    )
                    .foregroundColor(color)
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(hex: 0x21130d))
                    .padding(.bottom, 150)
                
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 25, height: 30)
                    .foregroundColor(.white)
                    .padding(.bottom, 150)
                
                Text(title)
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 60)
                
                switch title{
                    case "Calories":
                        Text("\(lastworkout.getCaloriesForLength(), specifier: "%.1f")")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.top, 80)
                        Text("kcal")
                            .fontWeight(.medium)
                            .font(.title3)
                            .padding(.top, 140)

                    case "Time":
                        let totalSeconds = lastworkout.getLength()
                        let hours = Int(totalSeconds) / 3600
                        let minutes = (Int(totalSeconds) % 3600) / 60
                        let seconds = Int(totalSeconds) % 60

                        let formattedString = formatTime(hours: hours, minutes: minutes, seconds: seconds)
                    
                        Text(formattedString)
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.top, 80)
                        Text("min")
                            .fontWeight(.medium)
                            .font(.title3)
                            .padding(.top, 140)
                    
                    default:
                        Text("Default")
                }
            }
        }
    }
    
    func formatTime(hours: Int, minutes: Int, seconds: Int) -> String {
        var formattedString = ""

        if hours != 0 {
            formattedString += String(format: "%dh", hours)
        }

        if minutes != 0 {
            formattedString += formattedString.isEmpty ? "" : " "
            formattedString += String(format: "%d:", minutes)
        }

        if seconds != 0 || formattedString.isEmpty {
            formattedString += formattedString.isEmpty ? "" : ""
            formattedString += String(format: "%02d", seconds)
        }

        return formattedString
    }
}


struct StatBar_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            StatBar(color: Color(hex: 0x8CB2BE),
                    lastworkout: Workout.sampleData[0],
                    icon: "flame",
                    title: "Calories")

            StatBar(color: Color(hex: 0x8CB2BE),
                    lastworkout: Workout.sampleData[0],
                    icon: "clock",
                    title: "Time")
        }
    }
}
