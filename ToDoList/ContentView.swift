//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    var body: some View {
        VStack {
        }
        if showNewTask {
            NewToDoView()
        }
        HStack {
            Text("To Do List")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                        Spacer()
            Button {
showNewTask = true
            } label: {
                Text("+")
                    .font(.largeTitle)
            }
        }
        .padding ()
        Spacer ()

    }
}

#Preview {
    ContentView()
}
