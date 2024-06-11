//
//  Reminder.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import Foundation

struct Reminder: Identifiable {
    let id = UUID()
    let messageContent: String
    let sentBy: String
    let remindMeBy: Date
    
    
}


// Create three instances of ReminderItem

let reminder1 = Reminder(
    messageContent: "Don't forget to call the dentist!",
    sentBy: "Alice",
    remindMeBy: Date(timeIntervalSinceNow: 3600) // 1 hour from now
)

let reminder2 = Reminder(
    messageContent: "Meeting with Bob at 3 PM",
    sentBy: "Work",
    remindMeBy: Date(timeIntervalSinceNow: 7200) // 2 hours from now
)

let reminder3 = Reminder(
    messageContent: "Pick up groceries",
    sentBy: "Mom",
    remindMeBy: Date(timeIntervalSinceNow: 10800) // 3 hours from now
)

// Example Data

let exampleReminders = [
reminder1,
reminder2,
reminder3
]
