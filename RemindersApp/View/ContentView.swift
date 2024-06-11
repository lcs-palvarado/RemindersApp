//
//  ContentView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    
    let items = exampleItem1
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ReminderItem(messageContent: "Call your grandma", sentBy: "Mom", remindMeBy: "Tomorrow")
                    ReminderItem(messageContent: "Walk the dog", sentBy: "dad", remindMeBy: "This afternoon")
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
