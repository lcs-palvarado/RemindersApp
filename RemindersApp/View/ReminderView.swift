//
//  ReminderView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ReminderView: View {
    
    let reminder: Reminder
    
    var body: some View {
        
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.lightGray))
                .frame(height: 150)
            
            VStack(alignment: .leading, spacing: 5){
                
                Text("Message Content: \(reminder.messageContent)")
                    .bold()
                Text("Sent By: \(reminder.sentBy)")
                    .bold()
                Text("Remind me By: \(reminder.remindMeBy)")
                    .bold()
            }
            .padding(.all, 10)
            
        }
        
        
    }
}

#Preview {
    ReminderView(reminder: reminder1)
}
