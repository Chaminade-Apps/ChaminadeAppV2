//
//  ResourcesView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/21/24.
//

import SwiftUI

struct ResourcesView: View {
    @State var isShowingSafariView = false
    var body: some View {
        VStack {
            HStack {
                Text("Resources")
                    .font(.custom("TiemposHeadline-Regular", size: 30, relativeTo: .title))
                    .padding()
                
                Spacer()
            }
            
            List{
                //Chaminade Website
                SafariLinkButton(title: "Chaminade Website", SFSymbol: "building.columns", url: URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                SafariLinkButton(title: "Chaminade Athletics", SFSymbol: "football.fill", url: URL(string: "https://athletics.chaminade-hs.org") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                //School Store
                SafariLinkButton(title: "School Store", SFSymbol: "storefront", url: URL(string: "https://store.chaminade-hs.org") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Tarmac
                SafariLinkButton(title: "Tarmac", SFSymbol: "newspaper", url: URL(string: "https://chstarmac.com") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Summer Camps
                SafariLinkButton(title: "Summer Camps", SFSymbol: "sun.max.fill", url: URL(string: "https://camps.chaminade-hs.org") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Chaminade Canvas Login
                SafariLinkButton(title: "Canvas Login", SFSymbol: "book.closed", url: URL(string: "https://chaminade-hs.instructure.com") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Lessing's Catering
                SafariLinkButton(title: "Lessing's Catering", SFSymbol: "fork.knife", url: URL(string: "https://chaminade.lessings.com") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Chaminade Connect
                SafariLinkButton(title: "ChaminadeConnect", SFSymbol: "person.2.fill", url: URL(string: "https://chaminadeconnect.com") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Powerschool Parent Portal
                SafariLinkButton(title: "PowerSchool Portal", SFSymbol: "p.square.fill", url: URL(string: "https://ps-chaminade-hs.org/public/home.html") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Make a Gift
                // MARK: might need to be adjusted later for the new site
                SafariLinkButton(title: "Make a Gift", SFSymbol: "gift.fill", url: URL(string: "https://www.chaminade-hs.org/support/makeagift") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
                // Local Livestream
                SafariLinkButton(title: "Local Live Stream", SFSymbol: "video.fill", url: URL(string: "https://events.locallive.tv/schools/chaminade") ?? URL(string: "https://www.chaminade-hs.org")!, isShowingSafariView: false)
                    .padding()
                
            }
            .scrollContentBackground(.hidden)
            .background(Color.creamBergundy)
            .contentMargins(.top, 0)
//            .clipped()
        }
        .background(Color.creamBergundy)
    }
}
