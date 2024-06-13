//
//  ContentView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ContentView: View {

    
    @State var newReminder = ""
    
    @State private var addNewReminderSheetIsShowing = false
    
    //Source of truth for our list of reminders
    @State private var reminders: [Reminder] = []
    
    //Holds search text provided by user
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List(
                    filter(reminders: reminders, on: searchText)
                ) { currentReminder in
                    ReminderView(reminder: currentReminder)
                   
                }
                .searchable(text: $searchText)
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
    
    //MARK: functions
    func filter(reminders: [Reminder], on providedText: String)->
    [Reminder]{
      
        //If provided text is empty return og array
        if providedText.isEmpty {
            return reminders
        } else{
            
            //Make empty array of reviews
            var  filteredReminders: [Reminder] = []
            
            //Iterate over existing reviews
            for reminder in reminders {
                if reminder.messageContent.contains(providedText) || reminder.sentBy.contains(providedText) {
                    filteredReminders.append(reminder)
                }
            }
            
            //return the list of reminders that contained provided text
            return filteredReminders
        }
    }
}

#Preview {
    ContentView()
}
