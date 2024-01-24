//
//  ActivitiesView.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct ActivitiesView: View {
    @Binding var activities: [Activity]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                
                VStack {
                    Text("Start new activity")
                        .bold()
                        .foregroundStyle(Color.primary)
                    Text("Set goal and track")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .padding(.bottom, 20)
                        .foregroundStyle(Color.primary)

                }
                .padding(.leading, 30)
                .padding(.top, 20)
                Spacer()
            }
             
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center){
                    ForEach($activities){ $activity in
                        ActivityIcons(activity: activity)
                            .padding(.leading, 10)
                    }
                }
            }
            .padding(.leading, 15)
            .padding(.bottom, 32)
            .frame(height: 100)
        }
        .background(
            RoundedRectangle(cornerRadius: 40)
               .fill(Color(hex: 0xDDE6E8))
       )
    }
}

#Preview {
    ActivitiesView(activities: .constant(Activity.initData()))
}
