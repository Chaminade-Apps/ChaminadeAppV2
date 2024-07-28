//
//  ContentView.swift
//  Teacher Helper
//
//  Created by Troy Volanth on 6/17/23.
//

import SwiftUI

struct BellScheduleView: View {
    @StateObject var getCal = GetCal()
    @State private var nextClassInfo: (status: String, schedule: Period, timeUntil: String) = ("", Period.placeholder, "00:00:00")
    
    var periodFunctions = PeriodFunctions()
    
    func fetchNextClassInfo() {
        // Call the function that returns the Block object
        let nextClass = periodFunctions.loadNextClass()
        
        // Extract the status string and Schedule object from the Block object
        let status = nextClass!.stringValue
        let schedule = nextClass!.schedule
        
        let hour = nextClass?.timeUntil.hour ?? 0
        let minute = nextClass?.timeUntil.minute ?? 0
        let second = nextClass?.timeUntil.second ?? 0
        
        let timerString = String(format: "%02d:%02d:%02d", hour, minute, second)
        
        nextClassInfo = (status, schedule, timerString)
    }
    
    var body: some View {
        VStack(spacing:25) {
            
//            Text()
            
            Text(nextClassInfo.schedule.name)
                .font(.title)
                .fontWeight(.semibold)
//                .foregroundColor(.black)
            
            HStack {
                Text(nextClassInfo.status)
                    .font(.title3)
//                    .foregroundColor(.black)
                
                Text(nextClassInfo.timeUntil)
                    .font(.title3)
//                    .foregroundColor(.black)
            }
        }
        .padding()
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                fetchNextClassInfo()
            }
        }
    }
}
