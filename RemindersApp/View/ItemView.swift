//
//  ItemView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ItemView: View {
    
    let item: ReminderItem
    
    var body: some View {
        
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.lightGray))
                .frame(height: 150)
            
            VStack(alignment: .leading, spacing: 5){
                
                Text("Message Content: \(item.messageContent)")
                Text("Sent By: \(item.sentBy)")
                Text("Remind me By: \(item.remindMeBy)")
            }
            .padding(.all, 10)
            
        }
        
        
    }
}

#Preview {
    ItemView(item: exampleItem)
}
