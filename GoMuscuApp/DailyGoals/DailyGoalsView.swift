//
//  DailyGoalsView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct DailyGoalsView: View {
    @Binding var dailyGoal : [DailyGoal]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                
                VStack {
                    Text("Your daily goal")
                        .bold()
                    Text("Last 7 days")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .padding(.bottom, 35)

                }
                .padding(.leading, 30)
                .padding(.top, 20)
                
                Spacer()
                
                ZStack() {
                    Circle()
                        .fill(Color(hex: 0x696969))
                        .frame(width: 30, height: 30)
                    
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .foregroundColor(Color(hex: 0xD3D3D3))
                        .frame(width: 30, height: 30)
                }
                .padding(.trailing, 20)
                .padding(.top, -20)
                
                
            }
             
            
            HStack(alignment: .center){
                ForEach($dailyGoal){ $goal in
                    CardDailyGoal(dailygoal: goal)
                        .padding(.leading, 10)
                }
            }
            .padding(.leading, 15)
            .padding(.bottom, 15)
        }
        .background(
            RoundedRectangle(cornerRadius: 40)
               .fill(Color(hex: 0xDDE6E8))
       )
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: alpha
        )
    }
}

#Preview {
    DailyGoalsView(dailyGoal: .constant(DailyGoal.initData()))
}
