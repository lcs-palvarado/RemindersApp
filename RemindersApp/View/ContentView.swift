//
//  ContentView.swift
//  RemindersApp
//
//  Created by Pablo Alvarado on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    
    let items = exampleItem
    
    var body: some View {
        NavigationView {
            VStack{
                List(items) { item in ItemView(item: item)
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
