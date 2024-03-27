//
//  ListRowView.swift
//  TodoList
//
//  Created by Kelvin Abaidoo on 30/01/2024.
//

import SwiftUI

struct ListRowView: View {

    let item:ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor( item.isCompleted ? .green : nil)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}

struct ListRowView_preview: PreviewProvider{
    
    static var item1 = ItemModel(title: "The first item", isCompleted: false)
    static var item2 = ItemModel(title: "The second item", isCompleted: true)
    
    static var previews: some View{
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
    
}

//#Preview {
////        ListRowView(item:item1)
//}
