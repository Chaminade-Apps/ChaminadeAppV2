//
//  ScheduleStorage.swift
//  Teacher Helper
//
//  Created by Troy Volanth on 6/17/23.
//
import SwiftUI
import Foundation

struct Period: Identifiable {
    static var placeholder: Period {
        return Period(name: "", startTime: "00:00", endTime: "00:00")
    }
    let id = UUID()
    let name: String
    let startTime: String
    let endTime: String
}

struct Block {
    let schedule: Period
    let stringValue: String
    let timeUntil: DateComponents
}

struct PeriodStorage {
    // Regular Schedule
    let regularSchedule = [
        Period(name: "HR", startTime: "08:05:00", endTime: "08:37:00"),
        Period(name: "1A", startTime: "08:40:00", endTime: "09:15:00"),
        Period(name: "1B", startTime: "09:18:00", endTime: "09:53:00"),
        Period(name: "2A", startTime: "09:56:00", endTime: "10:31:00"),
        Period(name: "2B", startTime: "10:34:00", endTime: "11:09:00"),
        Period(name: "3A", startTime: "11:12:00", endTime: "11:47:00"),
        Period(name: "3B", startTime: "11:50:00", endTime: "12:25:00"),
        Period(name: "4A", startTime: "12:28:00", endTime: "13:03:00"),
        Period(name: "4B", startTime: "13:06:00", endTime: "13:41:00"),
        Period(name: "5A", startTime: "13:44:00", endTime: "14:19:00"),
        Period(name: "5B", startTime: "14:22:00", endTime: "14:57:00")
    ]
    
    // Extended AM Assembly Schedule
    let extendedMorningAssemblySchedule = [
        Period(name: "HR", startTime: "08:05:00", endTime: "08:17:00"),
        Period(name: "Assembly", startTime: "08:20:00", endTime: "09:37:00"),
        Period(name: "1A", startTime: "09:40:00", endTime: "10:09:00"),
        Period(name: "1B", startTime: "10:12:00", endTime: "10:41:00"),
        Period(name: "2A", startTime: "10:44:00", endTime: "11:13:00"),
        Period(name: "2B", startTime: "11:16:00", endTime: "11:45:00"),
        Period(name: "3A", startTime: "11:48:00", endTime: "12:17:00"),
        Period(name: "3B", startTime: "12:20:00", endTime: "12:49:00"),
        Period(name: "4A", startTime: "12:52:00", endTime: "13:21:00"),
        Period(name: "4B", startTime: "13:24:00", endTime: "13:53:00"),
        Period(name: "5A", startTime: "13:56:00", endTime: "14:25:00"),
        Period(name: "5B", startTime: "14:28:00", endTime: "14:57:00")
    ]
    
    // Morning Assembly Schedule
    let morningAssemblySchedule = [
        Period(name: "HR", startTime: "08:05:00", endTime: "08:17:00"),
        Period(name: "Assembly", startTime: "08:20:00", endTime: "09:07:00"),
        Period(name: "1A", startTime: "09:10:00", endTime: "09:42:00"),
        Period(name: "1B", startTime: "09:45:00", endTime: "10:17:00"),
        Period(name: "2A", startTime: "10:20:00", endTime: "10:52:00"),
        Period(name: "2B", startTime: "10:55:00", endTime: "11:27:00"),
        Period(name: "3A", startTime: "11:30:00", endTime: "12:02:00"),
        Period(name: "3B", startTime: "12:05:00", endTime: "12:37:00"),
        Period(name: "4A", startTime: "12:40:00", endTime: "13:12:00"),
        Period(name: "4B", startTime: "13:15:00", endTime: "13:47:00"),
        Period(name: "5A", startTime: "13:50:00", endTime: "14:22:00"),
        Period(name: "5B", startTime: "14:25:00", endTime: "14:57:00")
    ]
    
    // Mass Assembly Schedule
    let massAssemblySchedule = [
        Period(name: "HR", startTime: "08:05:00", endTime: "08:12:00"),
        Period(name: "1A", startTime: "08:15:00", endTime: "08:42:00"),
        Period(name: "1B", startTime: "08:45:00", endTime: "09:12:00"),
        Period(name: "Mass", startTime: "09:15:00", endTime: "10:57:00"),
        Period(name: "2A", startTime: "11:00:00", endTime: "11:27:00"),
        Period(name: "2B", startTime: "11:30:00", endTime: "11:57:00"),
        Period(name: "3A", startTime: "12:00:00", endTime: "12:27:00"),
        Period(name: "3B", startTime: "12:30:00", endTime: "12:57:00"),
        Period(name: "4A", startTime: "13:00:00", endTime: "13:27:00"),
        Period(name: "4B", startTime: "13:30:00", endTime: "13:57:00"),
        Period(name: "5A", startTime: "14:00:00", endTime: "14:27:00"),
        Period(name: "5B", startTime: "14:30:00", endTime: "14:57:00")
    ]
    
    // Afternoon Assembly Schedule
    let afternoonAssemblySchedule = [
        Period(name: "HR", startTime: "08:05:00", endTime: "08:17:00"),
        Period(name: "1A", startTime: "08:20:00", endTime: "08:52:00"),
        Period(name: "1B", startTime: "08:55:00", endTime: "09:27:00"),
        Period(name: "2A", startTime: "09:30:00", endTime: "10:02:00"),
        Period(name: "2B", startTime: "10:05:00", endTime: "10:37:00"),
        Period(name: "3A", startTime: "10:40:00", endTime: "11:12:00"),
        Period(name: "3B", startTime: "11:15:00", endTime: "11:47:00"),
        Period(name: "4A", startTime: "11:50:00", endTime: "12:22:00"),
        Period(name: "4B", startTime: "12:25:00", endTime: "12:57:00"),
        Period(name: "5A", startTime: "13:00:00", endTime: "13:32:00"),
        Period(name: "5B", startTime: "13:35:00", endTime: "14:07:00"),
        Period(name: "Assembly", startTime: "14:10:00", endTime: "14:57:00")
    ]
}

struct PeriodFunctions {
    private let userDefaultsKey = "classSchedule"
    var getCal = GetCal()
    private var periods = PeriodStorage()
    var nextClass: [Period] {
        return periods.regularSchedule
    }
    
    func getPeriod() -> [Period] {
        print(Date())
        print("LoadNextClass... \(getCal.dayNumber)")
        print("LoadNextClass... \(getCal.scheduleType)")
        
        if getCal.scheduleType == "Regular Schedule" {
            return periods.regularSchedule
        } else if getCal.scheduleType == "Extended Morning Assembly" {
            return periods.extendedMorningAssemblySchedule
        } else if getCal.scheduleType == "Morning Assembly" {
            return periods.morningAssemblySchedule
        } else if getCal.scheduleType == "Mass Assembly" {
            return periods.massAssemblySchedule
        } else if getCal.scheduleType == "Afternoon Assembly" {
            return periods.afternoonAssemblySchedule
        } else {
            return periods.regularSchedule
        }
    }
    
    func loadNextClass() -> Block? {
        let periodFunctions = PeriodFunctions()
        let currentSchedule = periodFunctions.getPeriod()
        let nextClass = timeSorter(schedule: currentSchedule)
        
//        print("Returned schedule type: \(currentSchedule)")
        
        return nextClass
    }
    
 //   func loadNextClassName() -> String {
 //
 //
 //
 //   }
    
    func timeSorter (schedule: [Period]) -> Block? {
        let currentTime = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        let adjustedTimeString = dateFormatter.string(from: currentTime)
        
        dateFormatter.timeZone = TimeZone(identifier: "UTC")
        
        let calendar = Calendar.current
        let dateTime = dateFormatter.date(from: adjustedTimeString)
        var timeUntil = calendar.dateComponents([.hour, .minute, .second], from: Date())
        
        for block in schedule {
            let startTime = dateFormatter.date(from: block.startTime)
            let endTime = dateFormatter.date(from: block.endTime)
            let calendar = Calendar.current
            
            if startTime! <= dateTime! && dateTime! <= endTime! {
                timeUntil = calendar.dateComponents([.hour, .minute, .second], from: dateTime!, to: endTime!)
                let blockFinal = Block(schedule: block, stringValue: "ends in", timeUntil: timeUntil)
                return blockFinal // Class is already happening
            }
            
            if startTime! > dateTime! {
                timeUntil = calendar.dateComponents([.hour, .minute, .second], from: dateTime!, to: startTime!)
                let blockFinal = Block(schedule: block, stringValue: "starts in", timeUntil: timeUntil)
                return blockFinal // Next class
            }
        }
        let noClassesBlock = Block(schedule: Period.placeholder, stringValue: "No Classes", timeUntil: DateComponents())
        return noClassesBlock
    }
    
}


