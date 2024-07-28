//
//  ContentView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 4/8/24.
//

import SwiftUI

struct ContentTabView: View {
    @State private var showingSplash = true

    var body: some View {
        ZStack {
            TabView {
                // Your tab view content
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                CalendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                ResourcesView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Resources")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            .accentColor(Color.crimson)
            .opacity(showingSplash ? 0 : 1)

            if showingSplash {
                SplashView()
                    .transition(.push(from: .top))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation() {
                                showingSplash = false
                            }
                        }
                    }
            }
        }
    }
}
