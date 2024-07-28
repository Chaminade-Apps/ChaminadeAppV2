//
//  SettingsView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/21/24.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Settings")
                        .font(.custom("TiemposHeadline-Regular", size: 30, relativeTo: .title))
                        .padding()
                    Spacer()
                }
                
                
                List {
                    NavigationLink(destination: BellScheduleInputView()) {
                        Text("Input Bell Schedule")
                    }
                    
                    NavigationLink(destination: DeveloperView()) {
                        Text("Developer Credits & Contacts")
                    }
                    
                    Button(action: { print("dark mode") }) {
                        Text("dark mode")
                    }
                    
                    Button(action: {
                            UIApplication.shared.open(URL(string: "tel://5167425555")!)
                        }) {
                            Text("Call Chaminade")
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.creamBergundy)
                .contentMargins(.top, 0)
                //            .clipped()
            }
            .background(Color.creamBergundy)
            .font(.custom("GTAmerica-Regular", size: 20, relativeTo: .title2))
        }
    }
    
    enum Theme: String, CaseIterable {
        case systemDefault = "Default"
        case light = "Light"
        case dark = "Dark"
        
        var colorScheme: ColorScheme? {
            switch self {
            case .systemDefault:
                return nil
            case .light:
                return .light
            case .dark:
                return .dark
            }
        }
    }

    
}
