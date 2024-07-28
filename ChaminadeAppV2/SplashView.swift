//
//  FullScreenCoverView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 7/16/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("ChaminadeSeal")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding()
            Text("CHAMINADE")
                .multilineTextAlignment(.center)
                .font(.custom("TiemposHeadline-Regular", size: 26, relativeTo: .title2))
            //            .foregroundStyle(.black)
            Text("HIGH SCHOOL")
                .multilineTextAlignment(.center)
                .font(.custom("TiemposHeadline-Regular", size: 18, relativeTo: .title3))
            //            .foregroundStyle(.black)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.offBlackOffWhite.edgesIgnoringSafeArea(.all))
    }
}
