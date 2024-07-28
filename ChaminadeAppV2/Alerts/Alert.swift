//
//  Alert.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 7/12/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    // Network Alerts
    static let invalidData      = AlertItem(title: Text("invalidData"),
                                                message: Text("The data received from the server was invalid. Please contact support."),
                                                dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("invalidResponse"),
                                                message: Text("Invalid response from the server.  Please try again later or cantact support."),
                                                dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Invalid URL"),
                                                message: Text("There was an issue connecting to the server.  If this persists, please contact support."),
                                                dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Unable to Complete"),
                                                message: Text("Unable to complete your request at this time.  Please check your internet connection"),
                                                dismissButton: .default(Text("OK")))
    
    //  Account Alerts
    static let  invalidForm = AlertItem(title: Text("Invalid Form"),
                                                message: Text("Please ensure that all fields in the form have been filled out."),
                                                dismissButton: .default(Text("OK")))
    
    static let  invalidEmail = AlertItem(title: Text("Invalid Email"),
                                                message: Text("Please ensure your email is correct"),
                                                dismissButton: .default(Text("OK")))
    
    static let  userSaveSuccess = AlertItem(title: Text("Profile Save"),
                                                message: Text("Your profile information has been successfully saved"),
                                                dismissButton: .default(Text("OK")))
    
    static let  invalidUserData = AlertItem(title: Text("Profile Error"),
                                                message: Text("There was an error saving or retrieving your profile"),
                                                dismissButton: .default(Text("OK")))
}
