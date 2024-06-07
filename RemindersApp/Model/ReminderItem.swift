//
//  ReminderItem.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import Foundation

struct ReminderItem: Identifiable {
    var id = UUID()
    var messageContent: String
    var sentBy: String
    var remindMeBy: String
    
    
}

let exampleItem = ReminderItem(messageContent: "call mom", sentBy: "dad", remindMeBy: "Tomorrow")
