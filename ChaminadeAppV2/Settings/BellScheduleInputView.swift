//
//  BellScheduleInputView.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 6/11/24.
//

import SwiftUI

struct BellScheduleInputView: View {
    @ObservedObject var day1 = ClassDay1()
    @ObservedObject var day2 = ClassDay2()
    @ObservedObject var day3 = ClassDay3()
    @ObservedObject var day4 = ClassDay4()
    @ObservedObject var day5 = ClassDay5()
    @ObservedObject var day6 = ClassDay6()
    
    @State private var selectedDay = 0
    
    var body: some View {
        VStack {
            VStack {
                Picker("Select Day", selection: $selectedDay) {
                    Text("Day 1").tag(0)
                    Text("Day 2").tag(1)
                    Text("Day 3").tag(2)
                }
                Picker("Select Day", selection: $selectedDay) {
                    Text("Day 4").tag(3)
                    Text("Day 5").tag(4)
                    Text("Day 6").tag(5)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            List {
                if selectedDay == 0 {
                    HStack {
                        Text("Period 1A:")
                        TextField("(Day 1)", text: $day1.Class1A)
                    }
                    TextField("Day 1: Period 1B", text: $day1.Class1B)
                    TextField("Day 1: Period 2A", text: $day1.Class2A)
                    TextField("Day 1: Period 2B", text: $day1.Class2B)
                    TextField("Day 1: Period 3A", text: $day1.Class3A)
                    TextField("Day 1: Period 3B", text: $day1.Class3B)
                    TextField("Day 1: Period 4A", text: $day1.Class4A)
                    TextField("Day 1: Period 4B", text: $day1.Class4B)
                    TextField("Day 1: Period 5A", text: $day1.Class5A)
                    TextField("Day 1: Period 5B", text: $day1.Class5B)
                } else if selectedDay == 1 {
                    TextField("Day 2: Period 1A", text: $day2.Class1A)
                    TextField("Day 2: Period 1B", text: $day2.Class1B)
                    TextField("Day 2: Period 2A", text: $day2.Class2A)
                    TextField("Day 2: Period 2B", text: $day2.Class2B)
                    TextField("Day 2: Period 3A", text: $day2.Class3A)
                    TextField("Day 2: Period 3B", text: $day2.Class3B)
                    TextField("Day 2: Period 4A", text: $day2.Class4A)
                    TextField("Day 2: Period 4B", text: $day2.Class4B)
                    TextField("Day 2: Period 5A", text: $day2.Class5A)
                    TextField("Day 2: Period 5B", text: $day2.Class5B)
                } else if selectedDay == 2 {
                    TextField("Day 3: Period 1A", text: $day3.Class1A)
                    TextField("Day 3: Period 1B", text: $day3.Class1B)
                    TextField("Day 3: Period 2A", text: $day3.Class2A)
                    TextField("Day 3: Period 2B", text: $day3.Class2B)
                    TextField("Day 3: Period 3A", text: $day3.Class3A)
                    TextField("Day 3: Period 3B", text: $day3.Class3B)
                    TextField("Day 3: Period 4A", text: $day3.Class4A)
                    TextField("Day 3: Period 4B", text: $day3.Class4B)
                    TextField("Day 3: Period 5A", text: $day3.Class5A)
                    TextField("Day 3: Period 5B", text: $day3.Class5B)
                } else if selectedDay == 3 {
                    TextField("Day 4: Period 1A", text: $day4.Class1A)
                    TextField("Day 4: Period 1B", text: $day4.Class1B)
                    TextField("Day 4: Period 2A", text: $day4.Class2A)
                    TextField("Day 4: Period 2B", text: $day4.Class2B)
                    TextField("Day 4: Period 3A", text: $day4.Class3A)
                    TextField("Day 4: Period 3B", text: $day4.Class3B)
                    TextField("Day 4: Period 4A", text: $day4.Class4A)
                    TextField("Day 4: Period 4B", text: $day4.Class4B)
                    TextField("Day 4: Period 5A", text: $day4.Class5A)
                    TextField("Day 4: Period 5B", text: $day4.Class5B)
                } else if selectedDay == 4 {
                    TextField("Day 5: Period 1A", text: $day5.Class1A)
                    TextField("Day 5: Period 1B", text: $day5.Class1B)
                    TextField("Day 5: Period 2A", text: $day5.Class2A)
                    TextField("Day 5: Period 2B", text: $day5.Class2B)
                    TextField("Day 5: Period 3A", text: $day5.Class3A)
                    TextField("Day 5: Period 3B", text: $day5.Class3B)
                    TextField("Day 5: Period 4A", text: $day5.Class4A)
                    TextField("Day 5: Period 4B", text: $day5.Class4B)
                    TextField("Day 5: Period 5A", text: $day5.Class5A)
                    TextField("Day 5: Period 5B", text: $day5.Class5B)
                } else if selectedDay == 5 {
                    TextField("Day 6: Period 1A", text: $day6.Class1A)
                    TextField("Day 6: Period 1B", text: $day6.Class1B)
                    TextField("Day 6: Period 2A", text: $day6.Class2A)
                    TextField("Day 6: Period 2B", text: $day6.Class2B)
                    TextField("Day 6: Period 3A", text: $day6.Class3A)
                    TextField("Day 6: Period 3B", text: $day6.Class3B)
                    TextField("Day 6: Period 4A", text: $day6.Class4A)
                    TextField("Day 6: Period 4B", text: $day6.Class4B)
                    TextField("Day 6: Period 5A", text: $day6.Class5A)
                    TextField("Day 6: Period 5B", text: $day6.Class5B)
                }
            }
        }
        .navigationBarTitle("Bell Schedule")
        .onAppear {
            
            // Work to change NavTitle to alternateFont
            UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name:
                "TiemposHeadline-Regular", size: 22)!]
        }
    }
}
