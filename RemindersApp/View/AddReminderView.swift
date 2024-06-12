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
    
    //Returns true  when any of our input fields don't have a value.

    
    //Allow us to dismiss this sheet
    @Binding var isShowing: Bool
    
    //Obtain a reference to the source of truth for our new reminder
    @Binding var reminders: [Reminder]

    //Mark computed properties
    var body: some View {
        NavigationStack{
            Form {
                
                Section(header: Text("Details")){
                    TextField("Message Content", text: $messageContent)
                    TextField("Sent By", text: $sentBy)
                    DatePicker("Remind me by", selection: $remindMeBy, displayedComponents: .date)
                }
            }
            .navigationTitle("Add Reminder")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        //Add new reminder
                        
                        let newReminder = Reminder(messageContent: messageContent, sentBy: sentBy, remindMeBy: remindMeBy)                        
                        reminders.append(newReminder)
                        //...and dismiss sheet
                        isShowing = false
                    } label: {
                        Text("Done")
                    }

                }
            }
        }
    }
}

#Preview {
    AddReminderView(isShowing: Binding.constant(true),
                    reminders: Binding.constant(exampleReminders)
    )
    
}
