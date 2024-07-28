//
//  SafariView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/21/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewControllerType: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
