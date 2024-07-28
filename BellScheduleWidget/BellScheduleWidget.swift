//
//  BellScheduleWidget.swift
//  BellScheduleWidget
//
//  Created by Anthony Tast on 7/9/24.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), timeUntil: "00:00:00", scheduleName: "X", className: "X", periodType: "X")
    }
    
    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), timeUntil: "00:00:00", scheduleName: "X", className: "X", periodType: "X")
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        var entries: [SimpleEntry] = []
        
        let periodFunctions = PeriodFunctions()
        let getCal = GetCal()
        
        let nextClass = periodFunctions.loadNextClass()
        
        // Extract the status string and Schedule object from the Block object
//        let status = nextClass!.stringValue
        let schedule = nextClass!.schedule
        
        let hour = nextClass?.timeUntil.hour ?? 0
        let minute = nextClass?.timeUntil.minute ?? 0
        let second = nextClass?.timeUntil.second ?? 0
        
        let timerString = String(format: "%02d:%02d:%02d", hour, minute, second)
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 60 {
            let entryDate = Calendar.current.date(byAdding: .second, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, timeUntil: timerString, scheduleName: getCal.scheduleType, className: "TBD", periodType: schedule.name)
            entries.append(entry)
            
        }
        
 //       entries.append(SimpleEntry(date: <#Date#>, timeUntil: <#Date#>, scheduleName: <#String#>, className: <#String#>, periodType: <#String#>))
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    var date: Date
    
    var timeUntil: String
//    var statusString: String
    var scheduleName: String
    var className: String
    var periodType: String
}

struct BellScheduleWidgetEntryView : View {
    
    var entry: Provider.Entry
    
    var body: some View {
        VStack(spacing:25) {
            Text(entry.timeUntil)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            HStack {
                Text(entry.scheduleName)
                    .font(.title3)
                    .foregroundColor(.black)
                
                Text(entry.className)
                    .font(.title3)
                    .foregroundColor(.black)
                
                Text(entry.periodType)
                    .font(.title3)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}

struct BellScheduleWidget: Widget {
    let kind: String = "BellScheduleWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                BellScheduleWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                BellScheduleWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}
