//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoList: App {
  var body: some Scene {
      WindowGroup {
          ContentView()
              .modelContainer(for: ToDoItem.self)
      }
  }
}
