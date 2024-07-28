//
//  HomeView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/20/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.creamBergundy
                .edgesIgnoringSafeArea(.all)
            
            Image("HChaminadeFront")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top) // Ensure the image fills the entire screen
            
            VStack {
                HStack {
                    Spacer()
                    Image("ChaminadeSeal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Spacer()
                }
                .padding()
                Spacer()
//                BellScheduleView()
                    SocialLinksView()
//                        .background(Color.creamBergundy)
//                        .opacity(0.5)
                        .padding(.bottom, 50)
            }
        }
    }
    init() {
        for familyName in UIFont.familyNames {
            print (familyName)
            
        for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("-- \(fontName)")
            }
        }
    }
}
