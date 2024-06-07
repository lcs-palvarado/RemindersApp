//
//  ItemView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        
        ZStackLayout(alignment: .leading){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.lightGray))
                .frame(height: 150)
            
            VStack(alignment: .leading, spacing: 5){
                
                Text("Message Content: \(ReminderItem.messageContent)")
                Text("Sent By: \(ReminderItem.sentBy)")
                Text("Remind me By: \(ReminderItem.remindMeBy)")
            }
            .padding(.all, 10)
            
        }
        
        
    }
}

#Preview {
    ItemView()
}
