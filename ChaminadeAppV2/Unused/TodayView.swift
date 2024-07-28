//
//  TodayView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 6/24/24.
//

//import SwiftUI
//
//struct TodayView: View {
//    @ObservedObject var manager = GetCal()
//
//    var body: some View {
//            TodayRowView(data: manager.event)
//    }
//}
//
//struct TodayRowView: View {
//    var data: EventCalModel
//
//    // Create DateFormatters for input and output formats
//    private var inputDateFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd" // This should match the date format in your data
//        return formatter
//    }
//
//    private var outputDateFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "EEEE, MMMM d, yyyy" // Desired output format
//        return formatter
//    }
//
//    private var timeFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "h:mm a" // Desired time format
//        return formatter
//    }
//
//    // Get today's date in the format used by the event data
//    private var today: String {
//        return inputDateFormatter.string(from: Date())
//    }
//
//    var body: some View {
//        List {
//            if let todayEvents = data.eventsGroupedByDate()[today] {
//                Section(header: Text(formattedDate(from: today))
//                    .font(.headline)
//                    .textCase(nil)) {  // Ensure standard case
//                    ForEach(todayEvents) { event in
//                        VStack(alignment: .leading) {
//                            Text(event.summary)
//                                .font(.subheadline)
//                                .textCase(nil)  // Ensure standard case
//                            if let eventTime = formattedTime(from: event.dateTime) {
//                                Text(eventTime)
//                                    .font(.caption)
//                                    .foregroundColor(.gray)
//                                    .textCase(nil)  // Ensure standard case
//                            }
//                            if !event.location.isEmpty {
//                                Text(event.location)
//                                    .font(.caption)
//                                    .foregroundColor(.blue)
//                                    .textCase(nil)  // Ensure standard case
//                            }
//                        }
//                        .padding(.vertical, 5)
//                    }
//                }
//            } else {
//                Text("No events for today")
//                    .font(.headline)
//                    .padding()
//            }
//        }
//    }
//
//    // Helper function to format the date
//    private func formattedDate(from dateString: String) -> String {
//        guard let date = inputDateFormatter.date(from: dateString) else { return dateString }
//        return outputDateFormatter.string(from: date)
//    }
//
//    // Helper function to format the time
//    private func formattedTime(from dateTimeString: String) -> String? {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ" // This should match the dateTime format in your data
//
//        if let date = formatter.date(from: dateTimeString) {
//            return timeFormatter.string(from: date)
//        }
//        return nil
//    }
//}
//
