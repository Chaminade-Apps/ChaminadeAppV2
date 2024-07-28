//
//  CalendarView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 5/20/24.
//

import SwiftUI

struct CalendarView: View {
    @ObservedObject var manager = GetCal()
    @State private var selectedDate = Date()
    
    var oneYearAgo = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
    var oneYearAhead = Calendar.current.date(byAdding: .year, value: 1, to: Date())!
    
    var body: some View {
        VStack {
            HStack {
                Text("Calendar")
                    .font(.custom("TiemposHeadline-Regular", size: 30, relativeTo: .title))
                
                Spacer()
                
                Button {
                    selectedDate = Date()
                    manager.getData(for: selectedDate)
                } label: {
                    Image(systemName: "calendar")
                }
                
                DatePicker("", selection: $selectedDate, in: oneYearAgo...oneYearAhead, displayedComponents: .date)
                    .datePickerStyle(.compact)
                    .labelsHidden()
                    .onChange(of: selectedDate) {
                        manager.getData(for: selectedDate)
                    }
            }
            .padding()
            
            if manager.event.items.isEmpty {
                if manager.isLoading {
                    VStack {
                        Spacer()
                        ProgressView("Loading...")
                        Spacer()
                    }
                } else {
                    Spacer()
                    Text("No events available")
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
            } else {
                RowView(data: manager.event)
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.creamBergundy)
        .onAppear {
            manager.getData(for: selectedDate)
        }
    }
}
