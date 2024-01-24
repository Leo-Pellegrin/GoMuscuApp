//
//  TabBar.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 16/01/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            Group{
                HomeView()
                     .tabItem {
                         Image(systemName: "house")
                     }

                 Text("Content second page")
                     .tabItem {
                         Image(systemName: "calendar")
                     }
                     .tabViewStyle(.page(indexDisplayMode: .never))
                 Text("Content third page")
                     .tabItem{
                         Image(systemName: "person.circle")
                     }
            }
        }
    }
}

extension Color {
    init(hex: UInt) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

#Preview {
    TabBar()
}
