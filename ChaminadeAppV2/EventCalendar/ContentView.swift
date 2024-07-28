//
//  ContentView.swift
//  GoogleCalTests
//
//  Created by Anthony Tast on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = GetCal()

    var body: some View {
        NavigationView {
            RowView(data: manager.event)
                .navigationTitle("Google Calendar Events")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
