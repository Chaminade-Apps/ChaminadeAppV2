//
//  SafariLinkButton.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/21/24.
//

import SwiftUI

struct SafariLinkButton: View {
    var title: String
    var SFSymbol: String
    var url: URL
    @State var isShowingSafariView: Bool
    
    var body: some View {
            Button {
                isShowingSafariView.toggle()
            } label: {
                HStack{
                    Image(systemName: SFSymbol)
                        .padding(.trailing)
                        .frame(width: 50)
    
                    Text(title)
                        .font(.custom("GTAmerica-Regular", size: 20, relativeTo: .title2))
    
                }
                .tint(Color.crimson)
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: url)
                    .edgesIgnoringSafeArea(.all)
            })
    }
}
