//
//  AddReminderView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 11/06/24.
//

import SwiftUI

struct AddReminderView: View {
    
    //Mark Stored Properties
    @State private var messageContent: String = ""
    @State private var sentBy: String = ""
    @State private var remindMeBy: Date = Date()

    //Mark computed properties
    var body: some View {
      
        Form {
            
            Section(header: Text("Details")){
                TextField("Message Content", text: $messageContent)
                TextField("Sent By", text: $sentBy)
                DatePicker("Remind me by", selection: $remindMeBy, displayedComponents: .date)
            }
        }
        
    }
}

#Preview {
    AddReminderView()
}
