//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                    }
                    showNewTask = true
                } label: {
                    Text("+")
                        .font(.largeTitle)
                }
            }
            .padding()
            Spacer()
            List {
                ForEach(toDos) { toDoItem in
                    Text(toDoItem.title)
                    }
            }
        }
        .padding ()
        
        if showNewTask {
            NewToDoView()
        
        }
  
        Spacer ()

    }
}

#Preview {
    ContentView()
}
