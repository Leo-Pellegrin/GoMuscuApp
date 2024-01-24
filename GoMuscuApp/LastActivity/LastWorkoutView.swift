//
//  LastWorkoutView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct LastWorkoutView: View {
    var lastworkout: Workout
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Last workout")
                    .bold()
                    .foregroundStyle(Color.primary)
                Circle()
                    .frame(width: 10, height: 10)
                Text(lastworkout.activity.title)
                    .bold()
                    .foregroundStyle(Color.primary)
                
                Spacer()
                
                
            }
            .padding(.leading, 20)
            .padding(.top, 20)
            .padding(.bottom, 5)
            

            HStack{
                Image(systemName: lastworkout.activity.icon)
                
                Text(formatDate((lastworkout.startDate)!))
                    .font(.footnote)
                
                Circle()
                    .frame(width: 7, height: 7)
                
                Text(formatHour((lastworkout.startDate)!))
                    .font(.footnote)
                
                Circle()
                    .frame(width: 7, height: 7)
                
                let totalSeconds = lastworkout.getLength()
                let hours = Int(totalSeconds) / 3600
                let minutes = (Int(totalSeconds) % 3600) / 60
                let seconds = Int(totalSeconds) % 60

                let formattedString = formatTime(hours: hours, minutes: minutes, seconds: seconds)

                if !formattedString.isEmpty {
                    Text(formattedString)
                        .font(.footnote)
                } else {
                    Text("0sec")
                        .font(.footnote)
                }


            }
            .foregroundColor(.gray)
            .padding(.leading, 30)
            .padding(.bottom, 20)
        
        }
        .background(
            RoundedRectangle(cornerRadius: 40)
               .fill(Color(hex: 0xDDE6E8))
        )
        VStack(alignment: .trailing) {
            ZStack() {
                Circle()
                    .fill(Color(hex: 0x696969))
                    .frame(width: 30, height: 30)

                Image(systemName: "arrow.right.circle.fill")
                    .resizable()
                    .foregroundColor(Color(hex: 0xD3D3D3))
                    .frame(width: 30, height: 30)
            }
            .padding(.leading, 300)
            .padding(.top, -65)
        }

      
    }
    
    func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d yyyy"
        return dateFormatter.string(from: date)
    }
                     
     func formatHour(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "H'h'mm"
        return dateFormatter.string(from: date)
    }
    
    func formatTime(hours: Int, minutes: Int, seconds: Int) -> String {
        var formattedString = ""

        if hours != 0 {
            formattedString += String(format: "%dh", hours)
        }

        if minutes != 0 {
            formattedString += formattedString.isEmpty ? "" : " "
            formattedString += String(format: "%dmin", minutes)
        }

        if seconds != 0 || formattedString.isEmpty {
            formattedString += formattedString.isEmpty ? "" : " "
            formattedString += String(format: "%02dsec", seconds)
        }

        return formattedString
    }
}

#Preview {
    LastWorkoutView(lastworkout: Workout.sampleData[0])
}
