//
//  ContentView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText = ""
    
    @State var newReminder = ""
    
    @State private var addNewReminderSheetIsShowing = false
    
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
                        addNewReminderSheetIsShowing = true
                    } label: {
                        Image(systemName: "plus")
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)
                    }
                }
                
            }
            .sheet(isPresented: $addNewReminderSheetIsShowing) {
                AddReminderView(isShowing: $addNewReminderSheetIsShowing, reminders: $reminders)
            }
            .navigationTitle("Media Secretary")
        }
    }
}

#Preview {
    ContentView()
}
