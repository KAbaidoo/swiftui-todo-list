//
//  ListView.swift
//  TodoList
//
//  Created by Kelvin Abaidoo on 30/01/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items:[ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: false),
        ItemModel(title: "Third!", isCompleted: true),
        ]
    
    var body: some View {
        List{
            ForEach(items){ item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: onMove)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func onMove( from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}

