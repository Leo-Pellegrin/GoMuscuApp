//
//  ActivityIcons.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 22/01/2024.
//

import SwiftUI

struct ActivityIcons: View {
    let activity: Activity
    @State private var isPopupNewActivity: Bool = false
    
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(
                        RadialGradient(colors: [Color(hex: 0xffffff), Color(hex: 0xabbaab)], center: .center, startRadius: 20, endRadius: 230)
                    )
                    .frame(width: 70, height: 70)

                    
                Image(systemName: activity.icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                
            }
            .onTapGesture {
                self.isPopupNewActivity.toggle()
            }
            .sheet(isPresented: $isPopupNewActivity) {
                PopUpNewActivity(isPopupNewActivity: $isPopupNewActivity)
            }
            Text(activity.title.prefix(7) + (activity.title.count > 7 ? "..." : ""))
                .font(.subheadline)
                .bold()
                .foregroundStyle(Color.primary)
        }
    }
}

#Preview {
    ActivityIcons(activity: Activity.sampleData[0])
}
