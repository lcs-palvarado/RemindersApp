//
//  ContentView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    
    //Source of truth for our list of reminders
    @State private var reminders: [Reminder] = exampleReminders
    
    var body: some View {
        NavigationView {
            VStack{
                List(reminders) { currentReminder in
                    ReminderView(reminder: currentReminder)
                   
                }
                .searchable(text: Binding.constant(""))
                Spacer()
            }
            .toolbar{
                
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        //This would add a new ReminderItem
                    } label: {
                        Image(systemName: "plus")
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)
                    }
                }
                
            }
            .navigationTitle("Media Secretary")
        }
    }
}

#Preview {
    ContentView()
}
