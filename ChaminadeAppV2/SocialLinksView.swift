//
//  SocialLinksView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 7/17/24.
//

import SwiftUI

struct SocialLinksView: View {
    var body: some View {
        HStack {
            Link(destination: URL(string: "https://www.instagram.com/chaminade_hs/?hl=en")!) {
                            Image("InstagramBlack")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(15)
                                .background(Color.cream)
                                .clipShape(Circle())
                        }
            .buttonStyle(.plain)
            SocialLinksButton(url: "http://www.facebook.com/ChaminadeHighSchool", imageString: "FacebookAlt")
            Link(destination: URL(string: "https://www.youtube.com/channel/UChfmWWXJ2H9V6OxsvfIjrKA")!) {
                            Image("YoutubeBlack")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(15)
                                .background(Color.cream)
                                .clipShape(Circle())
                        }
            .buttonStyle(.plain)
            SocialLinksButton(url: "https://www.linkedin.com/school/chaminade-high-school/", imageString: "LinkedInCropped")
            SocialLinksButton(url: "http://www.x.com/chaminade_hs", imageString: "XLogo")
            
        }
    }
}

struct SocialLinksButton: View {
    
    var url: String
    var imageString: String
    
    var body: some View {
        HStack {
            Link(destination: URL(string: url)!) {
                        Image(imageString)
                          .resizable()
                          .renderingMode(.template)
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 20, height: 20)
                          .padding(15)
                          .background(Color.cream)
                          .clipShape(Circle())
                          .foregroundStyle(.black)

                    }
            .buttonStyle(.plain)
            
        }
    }
}
