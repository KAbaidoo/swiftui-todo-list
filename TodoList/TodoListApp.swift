//
//  TodoListApp.swift
//  TodoList
//
//  Created by Kelvin Abaidoo on 30/01/2024.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
